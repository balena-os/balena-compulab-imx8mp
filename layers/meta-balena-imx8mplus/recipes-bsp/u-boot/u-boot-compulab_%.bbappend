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

# Build the boot image with imx-boot instead of binman
require u-boot-compulab-imx-boot.inc

# Debugging aids, see u-boot-compulab-debug.inc
UBOOT_COMPULAB_DEBUG ?= "0"
require ${@'u-boot-compulab-debug.inc' if d.getVar('UBOOT_COMPULAB_DEBUG') == '1' else ''}
