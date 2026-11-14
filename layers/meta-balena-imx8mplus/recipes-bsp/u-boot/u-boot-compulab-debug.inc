# Debugging aids for the boot from the SPL to U-Boot proper, enabled with
# UBOOT_COMPULAB_DEBUG = "1" in local.conf. None of this is needed in a release.

# Report the SPL stack use at boot, to check the stack budget of
# spl-size-limit.cfg
SRC_URI:append = " \
    file://20005-spl-Report-the-initial-stack-use-when-it-is-kept-until-the-jump.patch \
    file://spl-stack-report.cfg \
"

# Trace the boot to U-Boot proper and print the OCRAM use of the SPL on the UART
SRC_URI:append:iot-gate-imx8plus = " \
    file://20098-DEBUG-trace-the-boot-to-u-boot-proper.patch \
    file://20099-DEBUG-spl-print-ocram-use.patch \
"

# Print the symbols of U-Boot proper and of the SPL in the log, to look up the
# addresses that 20098 and 20099 write to the UART
do_compile:append:iot-gate-imx8plus () {
    for config in ${UBOOT_MACHINE}; do
        echo "DBG SYMBOLS u-boot ${config}"
        ${NM} -n ${B}/${config}/u-boot | sed 's/^/SYM /'
        echo "DBG SYMBOLS u-boot-spl ${config}"
        ${NM} -n ${B}/${config}/spl/u-boot-spl | sed 's/^/SYM /'
    done
}
