PACKAGE_INSTALL:remove = "mdraid"
PACKAGE_EXCLUDE = "kernel-image cryptodev-module"
CORE_IMAGE_EXTRA_INSTALL:remove = " gpsd gps-utils connman wvdial ppp modemmanager "

IMAGE_ROOTFS_MAXSIZE = "65536"

# DEBUG: Log the size of the initramfs, its largest files and its packages in
# log.do_image, to find what makes it exceed IMAGE_ROOTFS_MAXSIZE
debug_initramfs_sizes () {
    bbwarn "DEBUG: initramfs size $(du -sk ${IMAGE_ROOTFS} | cut -f1)K"
    du -xak ${IMAGE_ROOTFS} | sort -n | tail -100 | while read size path; do
        bbnote "DEBUG: file ${size}K ${path#${IMAGE_ROOTFS}}"
    done
    while read pkg arch version; do
        size=$(sed -n 's/^PKGSIZE:[^:]*: //p' ${PKGDATA_DIR}/runtime-reverse/${pkg} 2>/dev/null)
        echo "$(expr ${size:-0} / 1024) ${pkg}"
    done < ${IMAGE_MANIFEST} | sort -n | while read size pkg; do
        bbnote "DEBUG: package ${size}K ${pkg}"
    done
}
IMAGE_PREPROCESS_COMMAND += "debug_initramfs_sizes"
