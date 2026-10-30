FILESEXTRAPATHS:prepend := "${THISDIR}/patches:${THISDIR}/imx8mp:"

UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot
DEPENDS = "bison-native gnutls-native python3-setuptools-native"

BALENA_DEVICE_FDT_ADDR_VAR ?= "fdt_addr_r"

BALENA_STAGE2 = "balena_stage2"
UBOOT_VARS += "BALENA_STAGE2"

# Use the MACHINE specific inc file
require compulab-imx8mp.inc

# To use do_configure() provided by poky/meta/recipes-bsp/u-boot/u-boot-configure.inc
# just make the merge_config.sh issue w/out the full path
do_configure:prepend () {
    export PATH=${PATH}:${S}/scripts/kconfig/
}

# DEBUG ONLY, see debug-uart.cfg
do_configure:prepend:iot-gate-imx8plus () {
    cat ${WORKDIR}/debug-uart.cfg >> ${S}/configs/${MACHINE}_defconfig
}

do_unpack[nostamp]="1"
do_patch[nostamp]="1"
do_configure[nostamp] = "1"
do_compile[nostamp] = "1"

# The boot image is assembled by imx-boot (imx-mkimage) rather than by the
# U-Boot binman flash.bin (disabled by 20002), so that meta-balena-hab can HAB
# sign it. Deploy the SPL and the files imx-boot packages, as the BSP does for
# NXP U-Boot.
SPL_BINARY = "spl/u-boot-spl.bin"

# The binman flash.bin that the package used to ship is no longer built
ALLOW_EMPTY:${PN} = "1"

# The BSP declares this recipe as the provider of imx-boot, as its binman
# flash.bin replaces it. The imx-boot recipe is the one that builds it here.
PROVIDES:remove = "imx-boot"

# uuu_bootloader_tag tags the boot image deployed by U-Boot, which is no
# longer built here, imx-boot tags its own
UUU_BOOTLOADER:forcevariable = ""

BOOT_TOOLS = "imx-boot-tools"

do_deploy:append () {
    for config in ${UBOOT_MACHINE}; do
        install -d ${DEPLOYDIR}/${BOOT_TOOLS}
        # imx-boot prefers the DTB suffixed with the U-Boot config. It must not
        # be the plain name, as it then links the DTB to itself in its staging
        # dir. meta-balena-hab reads the plain name.
        install -m 0644 ${B}/${config}/arch/arm/dts/${UBOOT_DTB_NAME} ${DEPLOYDIR}/${BOOT_TOOLS}/${UBOOT_DTB_NAME}-${UBOOT_CONFIG}
        install -m 0644 ${B}/${config}/arch/arm/dts/${UBOOT_DTB_NAME} ${DEPLOYDIR}/${BOOT_TOOLS}/${UBOOT_DTB_NAME}
        install -m 0644 ${B}/${config}/u-boot-nodtb.bin ${DEPLOYDIR}/${BOOT_TOOLS}/u-boot-nodtb.bin-${MACHINE}-${UBOOT_CONFIG}
    done
}

# The SPL runs from the OCRAM and finds what imx-mkimage appends after it (the
# DDR firmware, padded, and the FIT hash) right after its own image and DTB.
# The early malloc pool, gd and the stack are placed at the top of the SPL area
# and nothing stops them from overwriting that data when the SPL grows. Check
# that the data fits below them. All sizes are read from the U-Boot sources and
# build, and the stack depth is the worst case of the call graph that GCC writes
# for the SPL objects.
SPL_OCRAM_OVERLAP_FATAL ?= "0"
SPL_STACK_ROOTS = "board_init_f board_init_r"

# Only writes .ci files next to the objects, the code does not change
do_compile:prepend:iot-gate-imx8plus () {
    export KCFLAGS="${KCFLAGS} -fcallgraph-info=su"
}

# Worst case stack depth in bytes of the call chains that start at the roots,
# from the .ci files below top. Calls through a function pointer may reach any
# function that nothing calls directly, which is where such pointers come from,
# so the deepest of those is assumed for them. Functions without stack
# information (assembly, libgcc) count as no stack.
def spl_stack_depth(top, roots):
    import os
    import re

    node_re = re.compile(r'node: \{ title: "([^"]+)" label: "([^"]*)"')
    edge_re = re.compile(r'edge: \{ sourcename: "([^"]+)" targetname: "([^"]+)"')
    frame_re = re.compile(r'(\d+) bytes \(static\)')
    indirect = '__indirect_call'

    frame, calls = {}, {}
    for dirpath, _, files in os.walk(top):
        for name in files:
            if not name.endswith('.ci'):
                continue
            with open(os.path.join(dirpath, name)) as f:
                for line in f:
                    m = node_re.match(line)
                    if m:
                        fm = frame_re.search(m.group(2))
                        if fm:
                            # static functions of different files can share a
                            # name, keep the largest
                            frame[m.group(1)] = max(frame.get(m.group(1), 0), int(fm.group(1)))
                        continue
                    m = edge_re.match(line)
                    if m:
                        calls.setdefault(m.group(1), set()).add(m.group(2))

    missing = [r for r in roots if r not in frame]
    if not frame or missing:
        bb.fatal("No stack information for %s in %s" % (missing or "any function", top))

    called = set()
    for dsts in calls.values():
        called |= {d for d in dsts if d != indirect}
    targets = [f for f in frame if f not in called and f not in roots]

    pointer_depth = [0]
    memo = {}

    # Recursion is not expected in the SPL, a function that is already in the
    # chain adds nothing
    def depth(f, chain):
        if f in chain:
            return 0
        if f in memo:
            return memo[f]
        deepest = 0
        for callee in calls.get(f, ()):
            if callee == indirect:
                deepest = max(deepest, pointer_depth[0])
            else:
                deepest = max(deepest, depth(callee, chain | {f}))
        result = frame.get(f, 0) + deepest
        # a result computed inside a cycle depends on the chain, do not keep it
        if not (calls.get(f, set()) & chain):
            memo[f] = result
        return result

    direct = max(depth(r, frozenset()) for r in roots)
    # The functions reached by pointer may call through pointers too, iterate
    # until the depth settles
    for _ in range(8):
        memo.clear()
        new = max([depth(t, frozenset()) for t in targets] or [0])
        if new == pointer_depth[0]:
            break
        pointer_depth[0] = new
    else:
        bb.fatal("The stack depth through function pointers of %s does not settle" % top)
    memo.clear()
    total = max(depth(r, frozenset()) for r in roots)
    bb.note("SPL stack: %d bytes with calls through pointers, %d without (%d functions, %d reachable only by pointer)"
            % (total, direct, len(frame), len(targets)))
    return total

# Only for the machines that need it, the task exists for all of them
python do_check_spl_ocram () {
    pass
}

python do_check_spl_ocram:iot-gate-imx8plus () {
    import re

    def define(path, name):
        with open(path) as f:
            m = re.search(r'^#define\s+%s\s+(\w+)' % name, f.read(), re.M)
        if not m:
            bb.fatal("SPL OCRAM check: %s not found in %s" % (name, path))
        return int(m.group(1), 0)

    def config(path, name):
        with open(path) as f:
            m = re.search(r'^CONFIG_%s=(\w+)' % name, f.read(), re.M)
        if not m:
            bb.fatal("SPL OCRAM check: CONFIG_%s not found in %s" % (name, path))
        return int(m.group(1), 0)

    s = d.getVar('S')
    # The firmware is loaded as the 1D and 2D training blobs, each one with its
    # instruction (imem) and data (dmem) memory padded to these sizes
    helper = s + '/drivers/ddr/imx/phy/helper.c'
    fw_pad = 2 * (define(helper, 'IMEM_LEN') + define(helper, 'DMEM_LEN'))
    hash_len = define(s + '/include/u-boot/sha256.h', 'SHA256_SUM_LEN')
    # spl_verify_fit_hash() has the padding hardcoded, make sure it still matches
    with open(s + '/arch/arm/mach-imx/spl.c') as f:
        if not re.search(r'\+ 0x%x;' % fw_pad, f.read()):
            bb.fatal("SPL OCRAM check: spl_verify_fit_hash() does not use the 0x%x bytes of DDR firmware padding, review this check" % fw_pad)

    for machine in d.getVar('UBOOT_MACHINE').split():
        b = '%s/%s' % (d.getVar('B'), machine)
        out, _ = bb.process.run(d.expand('${NM} %s/spl/u-boot-spl' % b))
        m = re.search(r'^([0-9a-f]+) \w _end$', out, re.M)
        if not m:
            bb.fatal("SPL OCRAM check %s: _end not found in u-boot-spl" % machine)
        end = int(m.group(1), 16)
        dtb = os.path.getsize(b + '/spl/u-boot-spl.dtb')
        stack = config(b + '/.config', 'SPL_STACK')
        pool = config(b + '/.config', 'SYS_MALLOC_F_LEN')
        gd_size = define(b + '/include/generated/generic-asm-offsets.h', 'GD_SIZE')

        # As in spl_verify_fit_hash(): roundup(&_end + fdt_totalsize, 4) + firmware
        fw_start = (end + dtb + 3) // 4 * 4
        data_end = fw_start + fw_pad + hash_len
        # As in board_init_f_alloc_reserve(): the pool, then gd rounded down to
        # 16 bytes, from the stack top. The C stack grows down from there
        gd_at = (stack - pool - gd_size) // 16 * 16
        depth = spl_stack_depth(b + '/spl', d.getVar('SPL_STACK_ROOTS').split())
        limit = gd_at - depth
        margin = limit - data_end
        bb.note("SPL OCRAM %s: firmware at 0x%x, data ends at 0x%x, gd at 0x%x (stack top 0x%x, pool 0x%x, gd 0x%x), usable up to 0x%x with %d bytes of stack"
                % (machine, fw_start, data_end, gd_at, stack, pool, gd_size, limit, depth))
        if margin < 0:
            msg = "SPL OCRAM check %s: the DDR firmware and hash overlap the early malloc pool, gd and stack by %d bytes" % (machine, -margin)
            if d.getVar('SPL_OCRAM_OVERLAP_FATAL') == '1':
                bb.fatal(msg)
            bb.warn(msg)
        else:
            bb.note("SPL OCRAM %s: %d bytes of margin" % (machine, margin))
}
do_check_spl_ocram[nostamp] = "1"
addtask check_spl_ocram after do_compile before do_install
