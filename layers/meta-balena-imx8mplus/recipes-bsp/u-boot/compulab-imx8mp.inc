SRC_URI:append = " \
	file://10000-compulab-imx8m-plus-evnironment-Update-for-the-Bale.patch \
	file://20000-balena-Use-pylibfdt-setup.py-from-2021.04.patch \
	file://20001-balena-Fix-env-mmc.c-build-issue.patch \
	file://20002-balena-Disable-BINMAN.patch \
	file://20003-Share-the-DDR-PHY-trained-CSR-table-for-imx8mp.patch \
	file://20004-imx8m-Pad-the-DDR-firmware-data-memory-to-2-KiB.patch \
	file://20005-spl-Report-the-initial-stack-use-when-it-is-kept-until-the-jump.patch \
	file://env_size.cfg \
	file://spl-ocram.cfg \
"

SRC_URI:append:iot-gate-imx8plus = " \
	file://10001-Enable-HDMI-output-by-default-add-clk_ignore_unused-.patch \
	file://10002-u-boot-compulab-adapt-environment-to-balena-bootload.patch \
	file://20098-DEBUG-trace-the-boot-to-u-boot-proper.patch \
	file://20099-DEBUG-spl-print-ocram-use.patch \
"

SRC_URI:append:iotdin-imx8p-d1d8 = " \
	file://10003-iotdin-imx8mp-d1d8-Add-rollback-fixup.patch \
"
