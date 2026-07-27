IMAGE_FSTYPES:append = " balenaos-img"

BALENA_BOOT_PARTITION_FILES:append = " \
    imx-boot_${MACHINE}_${DRAM_CONF}:/imx-boot-${MACHINE}-sd.bin-flash_evk \
"

IMAGE_INSTALL:append = " \
    u-boot-compulab \
    linux-firmware-ax200 \
    linux-firmware-ax210 \
    firmware-imx-sdma-imx7d \
    wireless-regdb-static \
    imx-firmware-mrvl \
    eeprom-util \
    keyctl-caam \
    mbpoll \
    mp-verification-tool \
    libgpiod \
    libgpiod-tools \
    iotd-imx8p-config \
    "
IMAGE_INSTALL:remove = "kernel-image"
IMAGE_INSTALL:remove = "packagegroup-fsl-optee-imx"
IMAGE_INSTALL:remove = "jailhouse"

CORE_IMAGE_EXTRA_INSTALL:remove = " gpsd gps-utils connman wvdial ppp modemmanager "
IMAGE_ROOTFS_SIZE = "487424"

BALENA_BOOT_SIZE:iotdin-imx8p-d1d8 = "40960"
BALENA_STATE_SIZE:iotdin-imx8p-d1d8 = "20480"
BALENA_BOOT_SIZE:iotdin-imx8p = "40960"
BALENA_STATE_SIZE:iotdin-imx8p = "20480"
