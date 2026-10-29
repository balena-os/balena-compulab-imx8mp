# The kernel bundle of the bootloader is the largest file of the boot partition
# and the secure boot images do not fit with it. cryptsetup is only installed
# when signing.

# The SSH token is not used, and it pulls libssh and, through it, libgcrypt
# and libgpg-error into the initramfs
PACKAGECONFIG:remove = "ssh-token"

# Optimize for size
FULL_OPTIMIZATION:remove = "-O2"
FULL_OPTIMIZATION:append = " -Os"
