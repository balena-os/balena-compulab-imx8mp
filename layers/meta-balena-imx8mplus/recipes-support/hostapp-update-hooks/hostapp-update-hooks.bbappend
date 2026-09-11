FILESEXTRAPATHS:append := ":${THISDIR}/files"

HOSTAPP_HOOKS:append:iotdin-imx8p = " \
    99-resin-uboot \
    99-flash-bootloader \
"

HOSTAPP_HOOKS:append:iot-gate-imx8plus = " \
    99-balena-bootloader \
    99-flash-bootloader \
"
