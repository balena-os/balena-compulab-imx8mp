# The kernel bundle of the bootloader is the largest file of the boot partition
# and the initramfs it includes is larger on secure boot builds. The OS
# initramfs also includes the flasher and its secure boot tools for the migrate
# module, and has to fit IMAGE_ROOTFS_MAXSIZE. Build all the target recipes
# optimized for size.
#
# bitbake.conf sets FULL_OPTIMIZATION after the layer configuration is parsed,
# this is inherited from INHERIT, which is parsed after bitbake.conf.
FULL_OPTIMIZATION = "-Os -pipe ${DEBUG_FLAGS}"
