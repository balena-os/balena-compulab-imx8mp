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

# DEBUG ONLY, remove with 20098. Print the symbols of U-Boot proper and of the SPL
# in the log, to look up the addresses that 20098 writes to the UART
do_compile:append:iot-gate-imx8plus () {
    for config in ${UBOOT_MACHINE}; do
        echo "DBG SYMBOLS u-boot ${config}"
        ${NM} -n ${B}/${config}/u-boot | sed 's/^/SYM /'
        echo "DBG SYMBOLS u-boot-spl ${config}"
        ${NM} -n ${B}/${config}/spl/u-boot-spl | sed 's/^/SYM /'
    done
}

# The SPL runs from the OCRAM. imx-boot appends the DDR firmware, padded, and the
# FIT hash right after its image and DTB, and the stack, gd and the early malloc
# pool are at the top of the SPL area, below CONFIG_SPL_STACK. The U-Boot build
# checks that the SPL image fits in CONFIG_SPL_SIZE_LIMIT (spl-ocram.cfg) once
# these and a stack budget are subtracted, the limit has to leave out the DDR
# firmware and the hash, check that it matches the layout
python do_check_spl_layout () {
    import os
    import re

    def read(path):
        with open(path) as f:
            return f.read()

    def define(path, name):
        m = re.search(r'^#define\s+%s\s+(\w+)' % name, read(path), re.M)
        if not m:
            bb.fatal("%s not found in %s" % (name, path))
        return int(m.group(1), 0)

    # Board config headers define it or include the header of the SoM that does
    def header_define(path, name, seen=()):
        text = read(path)
        m = re.search(r'^#define\s+%s\s+(\w+)' % name, text, re.M)
        if m:
            return int(m.group(1), 0)
        for inc in re.findall(r'^#include\s+["<]([^">]+)[">]', text, re.M):
            for candidate in (os.path.join(os.path.dirname(path), inc), os.path.join(s, 'include', inc)):
                if candidate not in seen and os.path.exists(candidate):
                    value = header_define(candidate, name, seen + (path,))
                    if value is not None:
                        return value
        return None

    def config(text, name):
        m = re.search(r'^CONFIG_%s=(\S+)' % name, text, re.M)
        if not m:
            bb.fatal("CONFIG_%s is not set in the U-Boot configuration" % name)
        return m.group(1).strip('"')

    s = d.getVar('S')

    # imx-boot pads the DDR firmware to IMX_DDR_FW_IMEM_LEN and
    # IMX_DDR_FW_DMEM_LEN, the SPL has to find it with the same sizes
    helper = s + '/drivers/ddr/imx/phy/helper.c'
    imem, dmem = define(helper, 'IMEM_LEN'), define(helper, 'DMEM_LEN')
    pad_imem, pad_dmem = int(d.getVar('IMX_DDR_FW_IMEM_LEN'), 0), int(d.getVar('IMX_DDR_FW_DMEM_LEN'), 0)
    if (imem, dmem) != (pad_imem, pad_dmem):
        bb.fatal("The SPL loads the DDR firmware with 0x%x/0x%x bytes of instruction/data memory, imx-boot pads it to 0x%x/0x%x"
                 % (imem, dmem, pad_imem, pad_dmem))
    if define(helper, 'IMEM_2D_OFFSET') != imem + dmem:
        bb.fatal("IMEM_2D_OFFSET in %s is not IMEM_LEN + DMEM_LEN" % helper)
    fw = 2 * (imem + dmem)
    # spl_verify_fit_hash() has the size of the firmware hardcoded
    if not re.search(r'\+ 0x%x;' % fw, read(s + '/arch/arm/mach-imx/spl.c')):
        bb.fatal("spl_verify_fit_hash() does not use the 0x%x bytes of DDR firmware" % fw)
    hash_len = define(s + '/include/u-boot/sha256.h', 'SHA256_SUM_LEN')

    for machine in d.getVar('UBOOT_MACHINE').split():
        dotconfig = read('%s/%s/.config' % (d.getVar('B'), machine))
        limit = int(config(dotconfig, 'SPL_SIZE_LIMIT'), 0)
        text_base = int(config(dotconfig, 'SPL_TEXT_BASE'), 0)
        name = config(dotconfig, 'SYS_CONFIG_NAME')
        stack = header_define('%s/include/configs/%s.h' % (s, name), 'CONFIG_SPL_STACK')
        if stack is None:
            bb.fatal("CONFIG_SPL_STACK not found in %s.h or the headers it includes" % name)
        expected = stack - text_base - fw - hash_len
        if limit != expected:
            bb.fatal("U-Boot %s: CONFIG_SPL_SIZE_LIMIT is 0x%x, the SPL area from 0x%x to the stack top 0x%x without 0x%x bytes of DDR firmware and hash is 0x%x"
                     % (machine, limit, text_base, stack, fw + hash_len, expected))
        bb.note("U-Boot %s: CONFIG_SPL_SIZE_LIMIT 0x%x matches the SPL area from 0x%x to 0x%x without 0x%x bytes of DDR firmware and hash"
                % (machine, limit, text_base, stack, fw + hash_len))
}
do_check_spl_layout[vardeps] += "IMX_DDR_FW_IMEM_LEN IMX_DDR_FW_DMEM_LEN"
do_check_spl_layout[nostamp] = "1"
addtask check_spl_layout after do_configure before do_compile
