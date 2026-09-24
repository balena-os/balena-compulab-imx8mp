PACKAGE_INSTALL:remove = "mdraid"
PACKAGE_EXCLUDE = "kernel-image cryptodev-module"
CORE_IMAGE_EXTRA_INSTALL:remove = " gpsd gps-utils connman wvdial ppp modemmanager "
PACKAGE_INSTALL:remove:compulab-mx8mp = "initramfs-module-migrate"

IMAGE_ROOTFS_MAXSIZE = "65536"
