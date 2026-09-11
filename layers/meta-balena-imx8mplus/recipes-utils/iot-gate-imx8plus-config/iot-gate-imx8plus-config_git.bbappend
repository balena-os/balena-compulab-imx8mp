do_install:prepend () {
    mkdir -p ${S}/lib/udev/rules.d
    cp ${S}/etc/udev/rules.d/* ${S}/lib/udev/rules.d/
}

do_install:append () {
    rm -rf ${D}/etc
}
