FILESEXTRAPATHS:prepend := "${THISDIR}/linux-compulab:"

inherit kernel-resin kernel-balena

DEPENDS += "rsync-native"

SRC_URI:append = "file://balena.cfg"

KERNEL_PACKAGE_NAME="kernel"

SCMVERSION="n"

SRC_URI:append:iot-gate-imx8plus = " \
    file://0104-add-71MHz-pixel-clock-to-samsung-hdmi-phy.patch \
    file://0105-add-mdpcb-m2tpm-device-tree.patch \
    file://0204-add-iot-gate-imx8plus-m7-device-tree.patch \
    file://imx-rpmsg-tty.cfg \
"
