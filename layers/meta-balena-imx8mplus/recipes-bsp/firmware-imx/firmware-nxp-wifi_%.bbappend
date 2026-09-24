python () {
    pkgs = (d.getVar('PACKAGES') or '').split()
    deduped = []
    for pkg in pkgs:
        if pkg not in deduped:
            deduped.append(pkg)
    d.setVar('PACKAGES', ' '.join(deduped))
}
