FILESEXTRAPATHS:prepend := "${THISDIR}/linux-compulab:"

inherit kernel-resin kernel-balena

DEPENDS += "rsync-native"

SRC_URI:append = "file://balena.cfg"

# The crypto_queue backlog fix is already in the Compulab kernel
SRC_URI:remove = "file://crypto-engine-fix-crypto_queue-backlog-handling.patch"

# do_configure is a noexec task in the Compulab kernel, so the kmod.crt install
# done by meta-balena in do_configure:append never runs (its depends still do)
do_compile:prepend() {
    if [ -f "${DEPLOY_DIR_IMAGE}/balena-keys/kmod.crt" ]; then
        install -d ${B}/certs
        install -m 0655 "${DEPLOY_DIR_IMAGE}/balena-keys/kmod.crt" ${B}/certs/
    fi
}

KERNEL_PACKAGE_NAME="kernel"

SCMVERSION="n"

SRC_URI:append:iot-gate-imx8plus = " \
    file://0104-add-71MHz-pixel-clock-to-samsung-hdmi-phy.patch \
    file://0105-add-mdpcb-m2tpm-device-tree.patch \
    file://0204-add-iot-gate-imx8plus-m7-device-tree.patch \
    file://imx-rpmsg-tty.cfg \
"
