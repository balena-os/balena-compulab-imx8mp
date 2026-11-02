FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

require imx-ddr-fw-padding.inc

# Pad the DDR training firmware after the SPL to the sizes the SPL expects
SRC_URI:append = " \
    file://iMX8M-soc.mak-make-the-LPDDR4-firmware-padding-configurable.patch \
"
MKIMAGE_EXTRA_ARGS:append = " LPDDR_FW_IMEM_LEN=${IMX_DDR_FW_IMEM_LEN} LPDDR_FW_DMEM_LEN=${IMX_DDR_FW_DMEM_LEN}"

# objcopy does not fail for a blob larger than its padding, it moves the ones
# after it and the SPL would load the wrong data
do_compile:prepend () {
    for ddr_firmware in ${DDR_FIRMWARE_NAME}; do
        case ${ddr_firmware} in
        *_imem*) len=${IMX_DDR_FW_IMEM_LEN} ;;
        *_dmem*) len=${IMX_DDR_FW_DMEM_LEN} ;;
        *) bbfatal "DDR firmware ${ddr_firmware} is not instruction (imem) nor data (dmem) memory" ;;
        esac
        size=$(stat -L -c %s ${DEPLOY_DIR_IMAGE}/${ddr_firmware})
        if [ ${size} -gt $(printf "%d" ${len}) ]; then
            bbfatal "DDR firmware ${ddr_firmware} is ${size} bytes, larger than its padding ${len}"
        fi
    done
}
