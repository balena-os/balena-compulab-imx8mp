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
