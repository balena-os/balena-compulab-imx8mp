SRC_URI:append = " \
	file://10000-compulab-imx8m-plus-evnironment-Update-for-the-Bale.patch \
	file://20000-balena-Use-pylibfdt-setup.py-from-2021.04.patch \
	file://20001-balena-Fix-env-mmc.c-build-issue.patch \
	file://env_size.cfg \
"

SRC_URI:append:iot-gate-imx8plus = " \
	file://10001-Enable-HDMI-output-by-default-add-clk_ignore_unused-.patch \
	file://10002-u-boot-compulab-adapt-environment-to-balena-bootload.patch \
"
