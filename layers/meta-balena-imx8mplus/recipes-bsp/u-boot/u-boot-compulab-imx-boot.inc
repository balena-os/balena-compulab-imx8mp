# The boot image is assembled by imx-boot (imx-mkimage) rather than by the
# U-Boot binman flash.bin, so that meta-balena-hab can HAB sign it, see
# conf/layer.conf. Build U-Boot without binman and deploy the SPL and the
# files imx-boot packages, as the BSP does for NXP U-Boot.

# Without binman, the SPL finds the DDR training firmware that imx-boot appends
# after it with fixed padded sizes, which have to match IMX_DDR_FW_IMEM_LEN and
# IMX_DDR_FW_DMEM_LEN (20004)
require recipes-bsp/imx-mkimage/imx-ddr-fw-padding.inc
SRC_URI:append = " \
    file://20002-balena-Disable-BINMAN.patch \
    file://20004-imx8m-Pad-the-DDR-firmware-data-memory-to-2-KiB.patch \
"

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

# imx-boot pads the DDR firmware to IMX_DDR_FW_IMEM_LEN and IMX_DDR_FW_DMEM_LEN,
# check that the SPL finds it with the same sizes
python do_check_ddr_fw_len () {
    import re

    def read(path):
        with open(path) as f:
            return f.read()

    s = d.getVar('S')
    helper = s + '/drivers/ddr/imx/phy/helper.c'
    text = read(helper)

    def define(name):
        m = re.search(r'^#define\s+%s\s+(\w+)' % name, text, re.M)
        if not m:
            bb.fatal("%s not found in %s" % (name, helper))
        return int(m.group(1), 0)

    imem, dmem = define('IMEM_LEN'), define('DMEM_LEN')
    pad_imem, pad_dmem = int(d.getVar('IMX_DDR_FW_IMEM_LEN'), 0), int(d.getVar('IMX_DDR_FW_DMEM_LEN'), 0)
    if (imem, dmem) != (pad_imem, pad_dmem):
        bb.fatal("The SPL loads the DDR firmware with 0x%x/0x%x bytes of instruction/data memory, imx-boot pads it to 0x%x/0x%x"
                 % (imem, dmem, pad_imem, pad_dmem))
    if define('IMEM_2D_OFFSET') != imem + dmem:
        bb.fatal("IMEM_2D_OFFSET in %s is not IMEM_LEN + DMEM_LEN" % helper)
    # spl_verify_fit_hash() has the size of the firmware hardcoded
    if not re.search(r'\+ 0x%x;' % (2 * (imem + dmem)), read(s + '/arch/arm/mach-imx/spl.c')):
        bb.fatal("spl_verify_fit_hash() does not use the 0x%x bytes of DDR firmware" % (2 * (imem + dmem)))
}
do_check_ddr_fw_len[vardeps] += "IMX_DDR_FW_IMEM_LEN IMX_DDR_FW_DMEM_LEN"
addtask check_ddr_fw_len after do_patch before do_compile
