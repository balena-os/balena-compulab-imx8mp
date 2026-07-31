FILESEXTRAPATHS:prepend := "${THISDIR}/patches:${THISDIR}/imx8mp:"

UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot
DEPENDS = "bison-native gnutls-native"

BALENA_DEVICE_FDT_ADDR_VAR ?= "fdt_addr_r"

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
