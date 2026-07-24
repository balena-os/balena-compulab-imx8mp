SRCREV = "facddf8faa629f07cffb2dae8b92d6f6a96e9583"

SRC_URI:append = " \
	file://10000-compulab-imx8m-plus-evnironment-Update-for-the-Bale.patch \
	file://20000-balena-Use-pylibfdt-setup.py-from-2021.04.patch \
	file://20001-balena-Fix-env-mmc.c-build-issue.patch \
	file://20002-balena-Disable-BINMAN.patch \
	file://env_size.cfg \
"
