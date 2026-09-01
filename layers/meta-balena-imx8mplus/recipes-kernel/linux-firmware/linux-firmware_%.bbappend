FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
SRC_URI += " \
    file://iotdin-imx8p_WHENCE \
"

PACKAGES:remove = "${PN}-iwlwifi-cc-a0"
PACKAGES:remove = "${PN}-iwlwifi-ty-a0"
PACKAGES:remove = "${PN}-ibt-20"
PACKAGES:remove = "${PN}-ibt-41-41"

python () {
    global firmware_sort_driver_categories
    firmware_sort_driver_categories.update({
        "nxp89xx": "Connectivity",
    })
}
