IMAGE_FSTYPES:append = " balenaos-img"

BALENA_BOOT_PARTITION_FILES:append = " \
    imx-boot_${MACHINE}_${DRAM_CONF}:/imx-boot-${MACHINE}-sd.bin-flash_evk \
"

KERNEL_DEVICE_TREES = "${@' '.join(map(str, [os.path.join('balena-bootloader', os.path.basename(dt) + ':/' + os.path.basename(dt)) for dt in d.getVar('KERNEL_DEVICETREE').split()]))}"

BALENA_BOOT_PARTITION_FILES:append:iot-gate-imx8plus = " \
    ${KERNEL_DEVICE_TREES} \
    balena-bootloader/${KERNEL_IMAGETYPE}-initramfs-${MACHINE}.bin:/${KERNEL_IMAGETYPE} \
    balena-bootloader/bootenv:/bootenv \
"

do_rootfs[depends] += " virtual/balena-bootloader:do_deploy"
do_image_balenaos_img[depends] += " virtual/balena-bootloader:do_deploy"

IMAGE_INSTALL:append = " \
    u-boot-compulab \
    linux-firmware-ax200 \
    linux-firmware-ax210 \
    firmware-imx-sdma-imx7d \
    wireless-regdb-static \
    eeprom-util \
    keyctl-caam \
    mbpoll \
    mp-verification-tool \
    libgpiod \
    libgpiod-tools \
    "

IMAGE_INSTALL:append:iotdin-imx8p = " \
    linux-firmware-sd8997 \
    iotd-imx8p-config \
    "

IMAGE_INSTALL:append:iot-gate-imx8plus = " \
    grub-editenv \
    iot-gate-imx8plus-config \
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
