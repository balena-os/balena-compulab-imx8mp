# gnupg is in the OS initramfs for the secure boot flasher of the migrate
# module, which has to fit IMAGE_ROOTFS_MAXSIZE. gnutls is only used by dirmngr
# for network access, and brings in p11-kit, nettle, gmp and libtasn1.
PACKAGECONFIG:remove = "gnutls"
