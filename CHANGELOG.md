# Changelog

# v6.0.5

# v7.7.2
## (2026-07-27)

* layers/meta-balena: Update to v7.7.2 [Alexandru Costache]
* layers/meta-bsp-imx8mp: Update the layer revision [Valentin Raevsky]
* layers/meta-bsp-imx8mp: Update the layer revision [Valentin Raevsky]

# v7.7.1
## (2026-07-24)


<details>
<summary> Update layers/meta-balena to 39c491e9d0a69b17cbb27e4305affa4ed8174618 [balena-renovate[bot]] </summary>

> ## meta-balena-7.7.1
> ### (2026-07-21)
> 
> * tests: os: led: check LED_FILE exists on device, and stop counting sdterr [Ryan Cooke]
> 
> ## meta-balena-7.7.0
> ### (2026-07-15)
> 
> * image-types: tag hostapp during import so it includes RepoTags [Alex Gonzalez]
> * hostapp-update-hooks: add extensions support [Alex Gonzalez]
> * packagegroup-resin: add extension OCI runtime [Alex Gonzalez]
> * balena: register extensions runtime [Alex Gonzalez]
> * balena-extension-runtime: add recipe [Alex Gonzalez]
> * os-helpers: add bootenv helper [Alex Gonzalez]
> * os-helpers: add extensions helper [Alex Gonzalez]
> * docker-disk: remove built-in extension support [Alex Gonzalez]
> * hostapp-extensions-update: remove recipe. [Alex Gonzalez]
> 
> ## meta-balena-7.6.0
> ### (2026-07-14)
> 
> * mobynit: update to v1.0.1 [Alex Gonzalez]
> 
> ## meta-balena-7.5.11
> ### (2026-07-12)
> 
> 
> <details>
> <summary> Update balena-supervisor to v18 [balena-renovate[bot]] </summary>
> 
>> ### balena-supervisor-18.2.2
>> #### (2026-07-06)
>> 
>> * Clean up supervisor images in the database [Felipe Lalanne]
>> 
>> ### balena-supervisor-18.2.1
>> #### (2026-07-02)
>> 
>> * Clarify documentation on device tags API [Jonathan Berger]
>> 
>> ### balena-supervisor-18.2.0
>> #### (2026-06-22)
>> 
>> * Rename the supervisor service to core on the commposition [Felipe Lalanne]
>> * Report the supervisor main service to backend [Felipe Lalanne]
>> 
>> ### balena-supervisor-18.1.2
>> #### (2026-06-22)
>> 
>> * Docs: clarify behavior for `PATCH /v2/device/tags` [Pagan Gazzard]
>> 
>> ### balena-supervisor-18.1.1
>> #### (2026-06-05)
>> 
>> * Pass correct value for restart policy 'no' [Felipe Lalanne]
>> 
>> ### balena-supervisor-18.1.0
>> #### (2026-06-03)
>> 
>> * Remove any overrides created by helios and restore service [Felipe Lalanne]
>> * Revert "Add `helios` service to composition" [Felipe Lalanne]
>> 
>> ### balena-supervisor-18.0.0
>> #### (2026-05-27)
>> 
>> * Add `helios` service to composition [Felipe Lalanne]
>> * Restrict supervisor API listen address when overriding port [Felipe Lalanne]
>> * Use RESIN_BOARD_REV OS release info as a fallback [Felipe Lalanne]
>> * Add BALENA_HOST_OS_BUILD as environment variable [Felipe Lalanne]
>> * Add firewall configurations for the override port [Felipe Lalanne]
>> * Allow overriding apiEndpoint from a database field [Felipe Lalanne]
>> 
>> ### balena-supervisor-17.8.5
>> #### (2026-05-26)
>> 
>> * Convert extra_hosts separator from `=` to `:` [Christina Ying Wang]
>> 
>> ### balena-supervisor-17.8.4
>> #### (2026-05-21)
>> 
>> * Remove debugging-supervisor docs in favor of moving directly to docs [Matthew Yarmolinsky]
>> 
>> ### balena-supervisor-17.8.3
>> #### (2026-05-20)
>> 
>> * Remove update-locking docs in favor of moving them directly to the docs [Matthew Yarmolinsky]
>> 
> 
> </details>
> 
> 
> ## meta-balena-7.5.10
> ### (2026-07-09)
> 
> * kernel-image-initramfs: multi-kernel support [Alex Gonzalez]
> * kernel-balena-noimage: remove upstream rrecommends [Alex Gonzalez]
> * kernel-balena-override: add config fragment support [Alex Gonzalez]
> * kernel-balena: add multi kernel support [Alex Gonzalez]
> 
> ## meta-balena-7.5.9
> ### (2026-07-08)
> 
> * renovate: Append major/minor/patch updates with change-type footer [Kyle Harding]
> 
> ## meta-balena-7.5.8
> ### (2026-07-07)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to a8266fb [balena-renovate[bot]] </summary>
> 
>> ### leviathan-2.36.113
>> #### (2026-07-06)
>> 
>> * Update balena-os/leviathan-worker to v2.10.35 [Florin Sarbu]
>> * core/lib/common/worker.js: Switch to segmented OS image upload to worker [Florin Sarbu]
>> 
> 
> </details>
> 
> 
> ## meta-balena-7.5.7
> ### (2026-06-24)
> 
> * classes/image-balena: Cleanup issue file in Wrynose [Alexandru Costache]
> 
> ## meta-balena-7.5.6
> ### (2026-06-23)
> 
> * tests: Add uptime regression test to the os suite [Kyle Harding]
> * coreutils: Restore /proc/uptime read so uptime works on scarthgap [Kyle Harding]
> 
> ## meta-balena-7.5.5
> ### (2026-06-22)
> 
> * meta-balena-esr: Use GitHub REST API for verified commits [Kyle Harding]
> 
> ## meta-balena-7.5.4
> ### (2026-06-21)
> 
> * balena: bump balena-engine to restore 1777 default for bare tmpfs mounts [Kyle Harding]
> 
> ## meta-balena-7.5.3
> ### (2026-06-19)
> 
> * networkmanager_%.bbappend: Don't remove /usr/lib/NetworkManager/conf.d from the rootfs [Florin Sarbu]
> 
> ## meta-balena-7.5.2
> ### (2026-06-17)
> 
> * recipes-core/systemd: Fix building with Wrynose [Alexandru]
> 

</details>

* Set explicit partition size overrides for each machine [guille-vega]

# v7.5.1+rev2
## (2026-07-23)

* Update to the latest available Linux kernel version released by CompuLab. [Valentin Raevsky]

# v7.5.1+rev1
## (2026-07-16)


<details>
<summary> Update balena-yocto-scripts to 4c19733cad4cd1473d196d41ea7d2f4531913172 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.41.8
> ### (2026-07-15)
> 
> * Update GitHub Actions [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.41.7
> ### (2026-07-14)
> 
> * Update product-os/review-commit-action action to v0.3.2 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.41.6
> ### (2026-07-13)
> 
> * Update balena-io/balena-cli to v25 [balena-renovate[bot]]
> 

</details>

# v7.5.1
## (2026-07-13)


<details>
<summary> Update layers/meta-balena to 02273a709f119a093c4958cb6d0deed49df893eb [Florin Sarbu] </summary>

> ## meta-balena-7.5.1
> ### (2026-06-15)
> 
> * tests: Define imx8mmebcrs16a1 as flasherConfig type [Florin Sarbu]
> 
> ## meta-balena-7.5.0
> ### (2026-06-12)
> 
> * conf/layer.conf: Specify Wrynose compatibility [Alexandru Costache]
> 
> ## meta-balena-7.4.1
> ### (2026-06-11)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to a310841 [balena-renovate[bot]] </summary>
> 
>> ### leviathan-2.36.112
>> #### (2026-06-10)
>> 
>> * core/lib: Make Protected Management Frames (PMF) support optional / disabled when creating the wifi connection profile [Florin Sarbu]
>> 
> 
> </details>
> 
> 
> ## meta-balena-7.4.0
> ### (2026-06-09)
> 
> * systemd: add configuration to ignore lid switch events [Dr Bill Mcilhargey]
> 
> ## meta-balena-7.3.0
> ### (2026-06-09)
> 
> * tests: pieeprom test raspberrypi4 and CM4 [Yann CARDAILLAC]
> 
> ## meta-balena-7.2.1
> ### (2026-06-05)
> 
> * hostapp.yml: Add root hostapp composition for all boards [Kyle Harding]
> 
> ## meta-balena-7.2.0
> ### (2026-05-29)
> 
> * balena: Remove aufs as a supported storage driver [Kyle Harding]
> * balena: Remove aufs-to-overlay2 storage migration drop-in [Kyle Harding]
> * go: Upgrade to 1.24.6 from upstream walnascar recipes [Kyle Harding]
> * balena: Update balena engine to v25.0.14 [Kyle Harding]
> 
> ## meta-balena-7.1.1
> ### (2026-05-28)
> 
> * Remove some docs in favor of moving them directly to the product docs [Matthew Yarmolinsky]
> 
> ## meta-balena-7.1.0
> ### (2026-05-27)
> 
> * remove all bins from nss to save some place [Yann CARDAILLAC]
> 
> ## meta-balena-7.0.7
> ### (2026-05-26)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 053da9e [balena-renovate[bot]] </summary>
> 
>> ### leviathan-2.36.111
>> #### (2026-05-21)
>> 
>> * Update balena-io/balena-cli to v25 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.110
>> #### (2026-05-20)
>> 
>> * e2e: probe supervisor /ping instead of /v1/healthy [Kyle Harding]
>> 
>> ### leviathan-2.36.109
>> #### (2026-04-27)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.108
>> #### (2026-04-22)
>> 
>> * Update core/contracts digest to 7c3bf64 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.107
>> #### (2026-04-20)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
> 
> </details>
> 
> 

</details>

# v7.0.6+rev5
## (2026-07-08)


<details>
<summary> Update contracts to 8612b73406fd9c8242bc13ce979fd10e06f6c789 [balena-renovate[bot]] </summary>

> ## contracts-2.0.145
> ### (2026-07-01)
> 
> * hw/device-type: Add Jetson AGX Thor Devkit contract [Alexandru Costache]
> 

</details>

# v7.0.6+rev4
## (2026-07-07)


<details>
<summary> Update balena-yocto-scripts to 7d1760c79d5584f3d6bf9a1c2d0e796b6a5b5d82 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.41.5
> ### (2026-06-29)
> 
> * yocto-build-deploy: replace pattern based all history first parent match [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.41.4
> ### (2026-06-23)
> 
> * Decode base64-encoded GitHub App private key before token generation [Kyle Harding]
> * Update actions/create-github-app-token action to v3 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.41.3
> ### (2026-06-10)
> 
> * Update GitHub Actions [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.41.2
> ### (2026-06-04)
> 
> * yocto-build-deploy: soft-skip schema validation when not in checkout [Kyle Harding]
> * yocto-build-deploy: normalize composition placeholders to __VAR__ form [Kyle Harding]
> 
> ## balena-yocto-scripts-1.41.1
> ### (2026-06-03)
> 
> * Update aws/aws-cli to v2.34.61 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.41.0
> ### (2026-06-03)
> 
> * Add hostapp composition build pipeline [Kyle Harding]
> 
> ## balena-yocto-scripts-1.40.0
> ### (2026-06-02)
> 
> * Make release asset upload step required [Kyle Harding]
> 

</details>

# v7.0.6+rev3
## (2026-06-23)


<details>
<summary> Update contracts to 9fe86f23e02c5d438a96ab3209239dcb5df4dc5b [balena-renovate[bot]] </summary>

> ## contracts-2.0.144
> ### (2026-05-19)
> 
> * hw.device-type/beaglebone-ai64: Add the beaglebone-ai-64 alias to align with its device repo definition [Thodoris Greasidis]
> 

</details>

# v7.0.6+rev2
## (2026-06-10)

* unpin flowzone, track @master [Kyle Harding]

# v7.0.6+rev1
## (2026-05-25)


<details>
<summary> Update balena-yocto-scripts to 1df9bbe8d72fff7b71c71151d74dd64094971b30 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.35
> ### (2026-05-16)
> 
> * build/barys: Add Wrynose build support [Alexandru Costache]
> 

</details>

# v7.0.6
## (2026-05-25)


<details>
<summary> Update layers/meta-balena to 79cfd47b693b7b2109db29d78b6d0ec516ae5f94 [balena-renovate[bot]] </summary>

> ## meta-balena-7.0.6
> ### (2026-05-25)
> 
> * wpa_supplicant: enable OWE networks [Michal Toman]
> 
> ## meta-balena-7.0.5
> ### (2026-05-21)
> 
> * image-balena: include size of boot directory in HUP check [Alex Gonzalez]
> 
> ## meta-balena-7.0.4
> ### (2026-05-20)
> 
> 
> <details>
> <summary> Update balena-supervisor to v17.8.2 [balena-renovate[bot]] </summary>
> 
>> ### balena-supervisor-17.8.2
>> #### (2026-05-19)
>> 
>> * Pin back to Node 22 / Alpine 3.22 [Christina Ying Wang]
>> 
>> ### balena-supervisor-17.8.1
>> #### (2026-05-13)
>> 
>> * Update systeminformation to v5.31.6 [SECURITY] [balena-renovate[bot]]
>> 
>> ### balena-supervisor-17.8.0
>> #### (2026-05-01)
>> 
>> * Add a `PATCH /v2/device/tags` endpoint to tell the supervisor device tags to report [Pagan Gazzard]
>> 
>> ### balena-supervisor-17.7.5
>> #### (Invalid date)
>> 
>> * Trim whitespaces around dtparam input values [Christina Ying Wang]
>> * Fix dtparam parsing for comma-separated values [Christina Ying Wang]
>> 
>> ### balena-supervisor-17.7.4
>> #### (2026-04-29)
>> 
>> * Fix the network connectivity check [Felipe Lalanne]
>> 
>> ### balena-supervisor-17.7.3
>> #### (2026-04-20)
>> 
>> * Fix error propagation is fsUtils.touch [Pagan Gazzard]
>> * Convert code to async/await [Pagan Gazzard]
>> 
>> ### balena-supervisor-17.7.2
>> #### (2026-04-14)
>> 
>> * Firewall: avoid `exports.` to improve type-checking [Pagan Gazzard]
>> 
> 
> </details>
> 
> 
> ## meta-balena-7.0.3
> ### (2026-05-13)
> 
> * plymouth: start after udev settle [Michal Toman]
> 
> ## meta-balena-7.0.2
> ### (2026-05-11)
> 
> * kernel-balena: address CVE-2026-43284 [Alex Gonzalez]
> 

</details>

# v7.0.1+rev2
## (2026-05-16)

* Update balena-os/github-workflows to 25e5b0d2d7bdd26b714368c326c939f5e5692d89 [balena-renovate[bot]]

# v7.0.1+rev1
## (2026-05-13)

* Update to newer revision for iotdin-imx8p [Valentin Raevsky]

# v7.0.1
## (2026-05-10)


<details>
<summary> Update layers/meta-balena to f9a1cd0090e778084298dfc8b68f0b74286ffb47 [balena-renovate[bot]] </summary>

> ## meta-balena-7.0.1
> ### (2026-05-08)
> 
> * kernel-balena: address CVE-2026-31431 [Alex Gonzalez]
> 

</details>

# v7.0.0+rev2
## (2026-05-10)


<details>
<summary> Update balena-yocto-scripts to 50033716c5e2384d71a896205465d0a1223f3bed [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.34
> ### (2026-05-07)
> 
> * Dockerfile_yocto-build-env: Switch to docker-ce, pin 28.5.2 [Kyle Harding]
> 

</details>

# v7.0.0+rev1
## (2026-05-09)

* Update product-os/flowzone to 3385aec28224936f1fde1bf75a2c02b60af8019d [balena-renovate[bot]]

# v7.0.0
## (2026-05-07)


<details>
<summary> Update layers/meta-balena to 40263171117a11d10fcf1469214588e65a77b8d0 [balena-renovate[bot]] </summary>

> ## meta-balena-7.0.0
> ### (2026-04-24)
> 
> * mobynit: update to v1.0.0 [Alex Gonzalez]
> 
> ## meta-balena-6.12.11
> ### (2026-04-23)
> 
> * tests: cloud: Stop waiting for healthy supervisor in cloud suite before preload test [Ryan Cooke]
> 
> ## meta-balena-6.12.10
> ### (2026-04-21)
> 
> * balena-bootloader.bbclass: Add required CONFIG_NLS_ISO8859_1 as built-in [Florin Sarbu]
> 
> ## meta-balena-6.12.9
> ### (2026-04-16)
> 
> * Fix modemmanager build on dunfell [Florin Sarbu]
> 
> ## meta-balena-6.12.8
> ### (2026-04-13)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 2e945b4 [balena-renovate[bot]] </summary>
> 
>> ### leviathan-2.36.106
>> #### (2026-04-13)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.105
>> #### (2026-04-11)
>> 
>> * Update actions/upload-artifact digest to 043fb46 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.104
>> #### (2026-04-10)
>> 
>> * Update balena-os/leviathan-worker to v2.10.30 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.103
>> #### (2026-04-10)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.102
>> #### (2026-04-10)
>> 
>> * core/contracts: Update submodule to v2.0.142 [Alexandru Costache]
>> 
> 
> </details>
> 
> 
> ## meta-balena-6.12.7
> ### (2026-04-11)
> 
> 
> <details>
> <summary> Update balena-supervisor to v17.7.1 [balena-renovate[bot]] </summary>
> 
>> ### balena-supervisor-17.7.1
>> #### (2026-04-08)
>> 
>> * Fix bug in single -> multicontainer migration of legacy app.json [Pagan Gazzard]
>> 
>> ### balena-supervisor-17.7.0
>> #### (2026-04-07)
>> 
>> * Return updateStatus in /v2/applications/state [Felipe Lalanne]
>> * Ensure all downloading images are reported [Felipe Lalanne]
>> 
>> ### balena-supervisor-17.6.32
>> #### (2026-04-07)
>> 
>> * Convert many lodash usages to native equivalents [Pagan Gazzard]
>> 
>> ### balena-supervisor-17.6.31
>> #### (2026-04-07)
>> 
>> * Tests: remove unused file [Pagan Gazzard]
>> 
>> ### balena-supervisor-17.6.30
>> #### (2026-04-06)
>> 
>> * Update to typescript 6.x / es2025 [Pagan Gazzard]
>> * Remove nodejs 20/22 from the test matrix as we only ship with/truly support 24.x [Pagan Gazzard]
>> 
>> ### balena-supervisor-17.6.29
>> #### (2026-04-03)
>> 
>> * Update lodash to v4.18.1 [SECURITY] [balena-renovate[bot]]
>> 
>> ### balena-supervisor-17.6.28
>> #### (2026-04-03)
>> 
>> * config/backends: Allow setting custom dtb on iot-gate-imx8plus [Alexandru Costache]
>> 
> 
> </details>
> 
> 

</details>

# v6.12.6+rev5
## (2026-05-06)

* Update product-os/flowzone to 7e10a76d99df42af630a4fcade4bde64f36a151d [balena-renovate[bot]]

# v6.12.6+rev4
## (2026-05-06)


<details>
<summary> Update balena-yocto-scripts to 23eb6005eba2a46be19a28a8e94d382257966b52 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.33
> ### (2026-05-01)
> 
> * yocto-build-deploy.yml: Wait for self-CI helper image before Build [Kyle Harding]
> * yocto-build-deploy.yml: Override helper image tag for self-CI [Kyle Harding]
> * Dockerfile_yocto-build-env: Pin docker.io to 27.x [Kyle Harding]
> 
> ## balena-yocto-scripts-1.39.32
> ### (Invalid date)
> 
> * Set the default source-mirror environment to balena-production.us-east-1 [Kyle Harding]
> * Backup shared-downloads to S3 on build failure [Kyle Harding]
> * .github/workflows/yocto-build-deploy.yml: Add the rust crates to MIRRORS [Florin Sarbu]
> 

</details>

# v6.12.6+rev3
## (2026-04-22)

* Update balena-os/github-workflows to 6fdae9ec102bb2deaa0bd767155687fafd538436 [balena-renovate[bot]]

# v6.12.6+rev2
## (2026-04-22)


<details>
<summary> Update contracts to 7c3bf64c92a839dcbf02cfd69367392e7728fcde [balena-renovate[bot]] </summary>

> ## contracts-2.0.143
> ### (2026-04-22)
> 
> * hw.device-type: Add new device-type Compulab IOT-LINK Gateway [Florin Sarbu]
> 
> ## contracts-2.0.142
> ### (2026-04-09)
> 
> * Update iot-gate-imx8plus-d1d8 to remove Wifi and BT [Alexandru Costache]
> 

</details>

# v6.12.6+rev1
## (2026-04-11)

* Update product-os/flowzone to 3b69c8f20fbd2f43b5fcedb31373d7c45e86948e [balena-renovate[bot]]

# v6.12.6
## (2026-04-10)


<details>
<summary> Update layers/meta-balena to 28c9591e69a47f17f0827980b33d5bfc567eeb0c [balena-renovate[bot]] </summary>

> ## meta-balena-6.12.6
> ### (2026-04-10)
> 
> * Update actions/checkout digest to de0fac2 [balena-renovate[bot]]
> 

</details>

# v6.12.5
## (2026-04-09)


<details>
<summary> Update layers/meta-balena to 47c5ec10e0a27cc1f25e96f679482b7e717177e4 [balena-renovate[bot]] </summary>

> ## meta-balena-6.12.5
> ### (2026-04-09)
> 
> * .github/workflows: Remove discontinued machines [Florin Sarbu]
> 

</details>

# v6.12.4+rev2
## (2026-04-04)

* Update product-os/flowzone to 9ba87de4b6abf49c021894388f81de59bfa4a523 [balena-renovate[bot]]

# v6.12.4+rev1
## (2026-04-03)


<details>
<summary> Update balena-yocto-scripts to 1fd57160c9dea8e511e1c7dea52902438c6e45d8 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.31
> ### (2026-04-03)
> 
> * Update aws/aws-cli to v2.34.23 [balena-renovate[bot]]
> 

</details>

# v6.12.4
## (2026-04-02)


<details>
<summary> Update layers/meta-balena to f275ca247026c083a715518173e1faf982c75362 [balena-renovate[bot]] </summary>

> ## meta-balena-6.12.4
> ### (2026-04-02)
> 
> 
> <details>
> <summary> Update balena-supervisor to v17.6.27 [balena-renovate[bot]] </summary>
> 
>> ### balena-supervisor-17.6.27
>> #### (2026-04-01)
>> 
>> * Webpack: target the built js files directly [Pagan Gazzard]
>> 
>> ### balena-supervisor-17.6.26
>> #### (2026-04-01)
>> 
>> * Fix connectivity healthcheck [Felipe Lalanne]
>> 
>> ### balena-supervisor-17.6.25
>> #### (Invalid date)
>> 
>> * Remove unused `stateReportErrors` variable [Pagan Gazzard]
>> 
>> ### balena-supervisor-17.6.24
>> #### (Invalid date)
>> 
>> * Switch from pinejs-client-request to pinejs-client-fetch [Pagan Gazzard]
>> 
>> ### balena-supervisor-17.6.23
>> #### (Invalid date)
>> 
>> * Fix inconsistent handling of `null` vs `undefined` for `getEntryPoint` [Pagan Gazzard]
>> 
>> ### balena-supervisor-17.6.22
>> #### (2026-03-28)
>> 
>> * Fix pify promisified method names [Christina Ying Wang]
>> 
>> ### balena-supervisor-17.6.21
>> #### (2026-03-27)
>> 
>> * Migratinng legacy databases: fix handling no compatible releases [Pagan Gazzard]
>> * Update to using balena-api v7 [Pagan Gazzard]
>> 
>> ### balena-supervisor-17.6.20
>> #### (2026-03-26)
>> 
>> * Use `pify` for promisifying request [Pagan Gazzard]
>> * Use `Promise` as the return type for async request methods [Pagan Gazzard]
>> * Replace `Bluebird.filter` with async/await equivalent [Pagan Gazzard]
>> * Remove bluebird from migration files by converting to async/await [Pagan Gazzard]
>> * Replace `Bluebird.timeout` with `p-timeout` [Pagan Gazzard]
>> 
>> ### balena-supervisor-17.6.19
>> #### (2026-03-26)
>> 
>> * Avoid unnecessary `Promise`s in `ConfigBackend.matches` implementations [Pagan Gazzard]
>> 
>> ### balena-supervisor-17.6.18
>> #### (2026-03-26)
>> 
>> * Switch locks to using native resource management functionality [Pagan Gazzard]
>> 
>> ### balena-supervisor-17.6.17
>> #### (2026-03-26)
>> 
>> * Convert `forEach` to `for` loops where appropriate [Pagan Gazzard]
>> 
>> ### balena-supervisor-17.6.16
>> #### (2026-03-24)
>> 
>> * mdns-lookup: improve typings [Pagan Gazzard]
>> * mdns-lookup: remove setting explicit `verbatim: true` as it already defaults true [Pagan Gazzard]
>> 
>> ### balena-supervisor-17.6.15
>> #### (2026-03-24)
>> 
>> * Update migration.ts [giuseppe443]
>> 
>> ### balena-supervisor-17.6.14
>> #### (2026-03-20)
>> 
>> * Build: avoid needing to `mv` all files immediately after compiling [Pagan Gazzard]
>> 
>> ### balena-supervisor-17.6.13
>> #### (2026-03-20)
>> 
>> * Tests: switch from `require` to `fs` for loading JSON fixtures [Pagan Gazzard]
>> 
>> ### balena-supervisor-17.6.12
>> #### (2026-03-18)
>> 
>> * Remove legacy tests as they are not being run and no longer work [Pagan Gazzard]
>> 
>> ### balena-supervisor-17.6.11
>> #### (2026-03-18)
>> 
>> * Update to nodejs 24.x, alpine 3.23 [Pagan Gazzard]
>> 
>> ### balena-supervisor-17.6.10
>> #### (2026-03-17)
>> 
>> 
>> <details>
>> <summary> Update dependencies [Pagan Gazzard] </summary>
>> 
>>> #### balena-register-device-9.0.16
>>> ##### (2026-02-22)
>>> 
>>> * Update dependency balena-config-karma to v4.0.3 [balena-renovate[bot]]
>>> 
>>> #### balena-register-device-9.0.15
>>> ##### (2026-02-19)
>>> 
>>> * Add id-token: write permission for NPM OIDC publishing [Kyle Harding]
>>> 
>>> #### balena-register-device-9.0.14
>>> ##### (2025-11-24)
>>> 
>>> * Remove stub `@types/uuid` dependency [Pagan Gazzard]
>>> 
>>> #### balena-register-device-9.0.13
>>> ##### (2025-11-13)
>>> 
>>> * Update dependency uuid to v13 [balena-renovate[bot]]
>>> 
>>> #### balena-register-device-9.0.12
>>> ##### (2025-11-11)
>>> 
>>> * Update dependency mocha to v11 [balena-renovate[bot]]
>>> 
>>> #### balena-register-device-9.0.11
>>> ##### (2025-11-11)
>>> 
>>> * Update dependency @types/mocha to v10 [balena-renovate[bot]]
>>> 
>>> #### balena-register-device-9.0.10
>>> ##### (2025-11-11)
>>> 
>>> * Update dependency @balena/lint to v9 [balena-renovate[bot]]
>>> 
>>> #### balena-register-device-9.0.9
>>> ##### (2025-11-11)
>>> 
>>> * Update dependency buffer to v6 [balena-renovate[bot]]
>>> 
>>> #### balena-register-device-9.0.8
>>> ##### (2025-11-11)
>>> 
>>> * Update uuid to v11 [balena-renovate[bot]]
>>> 
>>> #### balena-register-device-9.0.7
>>> ##### (2025-04-10)
>>> 
>>> * Tests: remove use of chai-as-promised [Pagan Gazzard]
>>> 
>>> #### balena-register-device-9.0.6
>>> ##### (2025-04-10)
>>> 
>>> * Update dependency karma to v6 [SECURITY] [balena-renovate[bot]]
>>> 
>>> #### balena-register-device-9.0.5
>>> ##### (2025-03-19)
>>> 
>>> * Update dependency balena-config-karma to v4.0.2 [balena-renovate[bot]]
>>> 
>>> #### node-docker-delta-5.0.1
>>> ##### (2026-02-19)
>>> 
>>> * Add id-token: write permission for NPM OIDC publishing [Kyle Harding]
>>> 
>>> #### node-docker-delta-5.0.0
>>> ##### (2026-02-04)
>>> 
>>> * Remove bluebird dependency [Pagan Gazzard]
>>> 
>>> <details>
>>> <summary> Update docker-toolbelt to 7.x, dropping support for docker < 1.10 (released Feb 2016) [Pagan Gazzard] </summary>
>>> 
>>>> ##### docker-toolbelt-7.0.0
>>>> ###### (2026-02-02)
>>>> 
>>>> * Update @types/dockerode to 4.x [Pagan Gazzard]
>>>> * Switch to ESM [Pagan Gazzard]
>>>> * Update tsconfig target to es2024 [Pagan Gazzard]
>>>> * Update minimum supported nodejs version to ^22.22.0 || >=24.13.0 [Pagan Gazzard]
>>>> * Drop support for docker < 1.10 (released Feb 2016) [Pagan Gazzard]
>>>> 
>>>> ##### docker-toolbelt-6.0.14
>>>> ###### (2025-10-07)
>>>> 
>>>> * Remove `event-stream` in favor of built-in alternatives [Pagan Gazzard]
>>>> 
>>> 
>>> </details>
>>> 
>>> * Switch to ESM [Pagan Gazzard]
>>> * Update tsconfig target to es2024 [Pagan Gazzard]
>>> * Update minimum supported nodejs version to ^22.22.0 || >=24.13.0 [Pagan Gazzard]
>>> 
>>> #### node-docker-delta-4.1.1
>>> ##### (2025-10-07)
>>> 
>>> 
>>> <details>
>>> <summary> Update dependencies [Pagan Gazzard] </summary>
>>> 
>>>> ##### docker-toolbelt-6.0.13
>>>> ###### (2025-10-06)
>>>> 
>>>> * Update actions/checkout digest to 08eba0b [balena-renovate[bot]]
>>>> 
>>>> ##### docker-toolbelt-6.0.12
>>>> ###### (2025-10-06)
>>>> 
>>>> * Update dependencies [Pagan Gazzard]
>>>> 
>>>> ##### docker-toolbelt-6.0.11
>>>> ###### (2025-04-16)
>>>> 
>>>> * Update actions/setup-node digest to 49933ea [balena-renovate[bot]]
>>>> 
>>>> ##### docker-toolbelt-6.0.10
>>>> ###### (2025-04-11)
>>>> 
>>>> * Update dependency typedoc to ^0.28.0 [balena-renovate[bot]]
>>>> 
>>>> ##### docker-toolbelt-6.0.9
>>>> ###### (2025-04-10)
>>>> 
>>>> * Update peaceiris/actions-gh-pages action to v4 [balena-renovate[bot]]
>>>> 
>>>> ##### docker-toolbelt-6.0.8
>>>> ###### (2025-04-10)
>>>> 
>>>> * Update dependency rimraf to v6 [balena-renovate[bot]]
>>>> 
>>>> ##### docker-toolbelt-6.0.7
>>>> ###### (2025-04-10)
>>>> 
>>>> * Update dependency balena-semver to v3 [balena-renovate[bot]]
>>>> 
>>>> ##### docker-toolbelt-6.0.6
>>>> ###### (2025-04-02)
>>>> 
>>>> * Update dependency mocha to v11 [balena-renovate[bot]]
>>>> 
>>>> ##### docker-toolbelt-6.0.5
>>>> ###### (2025-03-25)
>>>> 
>>>> * Update actions/setup-node action to v4 [balena-renovate[bot]]
>>>> 
>>>> ##### docker-toolbelt-6.0.4
>>>> ###### (2025-03-19)
>>>> 
>>>> * Pin dependencies [balena-renovate[bot]]
>>>> 
>>>> ##### docker-toolbelt-6.0.3
>>>> ###### (2024-09-27)
>>>> 
>>>> * CI: Update checkout settings [Pagan Gazzard]
>>>> 
>>> 
>>> </details>
>>> 
>>> 
>>> #### node-systemd-0.5.11
>>> ##### (2026-02-19)
>>> 
>>> * Add id-token: write permission for NPM OIDC publishing [Kyle Harding]
>>> 
>>> #### node-systemd-0.5.10
>>> ##### (2025-04-10)
>>> 
>>> * Update dependency @balena/lint to v8 [balena-renovate[bot]]
>>> 
>>> #### node-systemd-0.5.9
>>> ##### (2025-04-07)
>>> 
>>> * Update Rust crate tokio to v1.38.2 [SECURITY] [balena-renovate[bot]]
>>> 
>>> #### node-systemd-0.5.8
>>> ##### (2025-04-02)
>>> 
>>> * Update dependency mocha to v11 [balena-renovate[bot]]
>>> 
>>> #### node-systemd-0.5.7
>>> ##### (2025-03-19)
>>> 
>>> * Update docker/login-action action to v3.4.0 [balena-renovate[bot]]
>>> 
>>> #### node-systemd-0.5.6
>>> ##### (2025-03-19)
>>> 
>>> * Update actions/upload-artifact action to v4.6.2 [balena-renovate[bot]]
>>> 
>>> #### node-systemd-0.5.5
>>> ##### (2025-03-19)
>>> 
>>> * Update ghcr.io/balena-os/mock-systemd-bus Docker tag to v0.2.3 [balena-renovate[bot]]
>>> 
>>> #### node-systemd-0.5.4
>>> ##### (2025-03-19)
>>> 
>>> * Pin actions/setup-node action to 1a4442c [balena-renovate[bot]]
>>> 
>>> #### node-systemd-0.5.3
>>> ##### (2025-03-19)
>>> 
>>> * Update actions/upload-artifact action to v4.6.1 [balena-renovate[bot]]
>>> 
>>> #### node-systemd-0.5.2
>>> ##### (2025-02-07)
>>> 
>>> * Update to Node 20 [Christina Ying Wang]
>>> 
>>> #### node-systemd-0.5.1
>>> ##### (2024-11-18)
>>> 
>>> * Explicitly set GH_TOKEN permissions [Anton Belodedenko]
>>> 
>>> #### balena-compose-7.4.0
>>> ##### (2026-03-06)
>>> 
>>> * Mark balena-sdk v23 as supported [Pagan Gazzard]
>>> * Mark balena-sdk to the peer dependency it is [Pagan Gazzard]
>>> 
>>> #### balena-compose-7.3.3
>>> ##### (2026-02-24)
>>> 
>>> * Add id-token: write permission for NPM OIDC publishing [Kyle Harding]
>>> 
>>> #### balena-compose-7.3.2
>>> ##### (2026-01-08)
>>> 
>>> * Add ts-node to dev deps [joshbwlng]
>>> * Update dependency ts-mocha to v11 [balena-renovate[bot]]
>>> 
>>> #### balena-compose-7.3.1
>>> ##### (2026-01-06)
>>> 
>>> * Set label values to stringified number [joshbwlng]
>>> 
>>> #### balena-compose-7.3.0
>>> ##### (2025-12-19)
>>> 
>>> * Support sw.os and sw.kernel contract requirement variants, allow multiple variants [Christina Ying Wang]
>>> 
>> 
>> </details>
>> 
>> 
>> ### balena-supervisor-17.6.9
>> #### (2026-03-17)
>> 
>> * Update alpine to 3.22 to get latest nodejs 22.x / npm 11.x [Pagan Gazzard]
>> 
>> ### balena-supervisor-17.6.8
>> #### (2026-03-16)
>> 
>> * Update @types/dockerode to 3.3.47 [Pagan Gazzard]
>> 
>> ### balena-supervisor-17.6.7
>> #### (2026-03-16)
>> 
>> * Relax UUID regex in deconstructDockerName [Christina Ying Wang]
>> 
>> ### balena-supervisor-17.6.6
>> #### (2026-03-16)
>> 
>> * Typings: replace `UnwrappedPromise` with typescript built-in `Awaited` [Pagan Gazzard]
>> 
>> ### balena-supervisor-17.6.5
>> #### (2026-03-16)
>> 
>> * Tests: add nodejs 24 to the automated nodejs test matrix [Pagan Gazzard]
>> 
>> ### balena-supervisor-17.6.4
>> #### (2026-03-11)
>> 
>> * mount-partitions: create data directory [Alex Gonzalez]
>> 
> 
> </details>
> 
> 

</details>

# v6.12.3+rev2
## (2026-04-01)


<details>
<summary> Update balena-yocto-scripts to 108f3c8fd68bcc4c09b015cafab1db722fdf71d5 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.30
> ### (2026-04-01)
> 
> * Update balena-io/balena-cli to v24 [balena-renovate[bot]]
> 

</details>

# v6.12.3+rev1
## (2026-03-31)

* Update balena-os/github-workflows to [balena-renovate[bot]]

# v6.12.3
## (2026-03-29)


<details>
<summary> Update layers/meta-balena to f3eea3ba73b68ef4cb633efc6077ac5baced1fe1 [balena-renovate[bot]] </summary>

> ## meta-balena-6.12.3
> ### (2026-03-26)
> 
> * initrdscripts: Unmount the state partition before kexec [Michal Toman]
> 

</details>

# v6.12.2+rev1
## (2026-03-29)


<details>
<summary> Update balena-yocto-scripts to 8774b8f641bd002becca624e213e0dba330205c8 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.29
> ### (2026-03-28)
> 
> * stop running AMI delete on failure step if no AMI created, and stop AMI deploy on non-finalised workflow-dispatch [Ryan Cooke]
> * workflows: simplify esr check to tag comparison [Alex Gonzalez]
> 

</details>

# v6.12.2
## (2026-03-26)


<details>
<summary> Update layers/meta-balena to 0cc73f5481ae9ac26369e78806fd7c907a6a4aeb [balena-renovate[bot]] </summary>

> ## meta-balena-6.12.2
> ### (2026-03-20)
> 
> * balena-supervisor: remove redundant bind mounts and DOCKER_ROOT [Alex Gonzalez]
> * balena-supervisor: remove apps.json initialization from start script [Alex Gonzalez]
> * balena-supervisor: remove restart from engine run command [Alex Gonzalez]
> 

</details>

# v6.12.1+rev2
## (2026-03-26)

* Update balena-yocto-scripts to 22b8b77a848df921c3b96a1bf689f91ee453ccb4 [balena-renovate[bot]]

# v6.12.1+rev1
## (2026-03-24)


<details>
<summary> Update contracts to 7225779853a3904517285bd19f7e2be44026c108 [balena-renovate[bot]] </summary>

> ## contracts-2.0.141
> ### (2026-03-16)
> 
> * iot-gate-imx8plus: replace dram size range with explicit dram sizes [Alex Gonzalez]
> 

</details>

# v6.12.1
## (2026-03-18)


<details>
<summary> Update layers/meta-balena to a41a740681e9ce082f7fe1b5775eb2c3e834b371 [balena-renovate[bot]] </summary>

> ## meta-balena-6.12.1
> ### (2026-03-18)
> 
> * os/tests: Fix sporadic failure in recover-sshd-socket [Alexandru Costache]
> 
> ## meta-balena-6.12.0
> ### (2026-03-17)
> 
> * add flock and lockfile documentation [Yann CARDAILLAC]
> 
> ## meta-balena-6.11.14
> ### (2026-03-16)
> 
> * wpa-supplicant: Align to recipe from Scarthgap [Florin Sarbu]
> 

</details>

# v6.11.13+rev1
## (2026-03-16)


<details>
<summary> Update contracts to ab2042b50e075fa27e16e23bb413adac7700c132 [balena-renovate[bot]] </summary>

> ## contracts-2.0.140
> ### (2026-03-11)
> 
> * iot-gate-imx8plus-d1d8: Enable bluetooth and wifi [Florin Sarbu]
> 
> ## contracts-2.0.139
> ### (2026-03-11)
> 
> * ucm-imx93: Set wifi and bt to false [Florin Sarbu]
> 
> ## contracts-2.0.138
> ### (2026-03-09)
> 
> * contracts/raspberrypi5: Update device name to mention CM5 support [Alexandru]
> 

</details>

# v6.11.13
## (2026-03-15)


<details>
<summary> Update layers/meta-balena to 3163559db59c23c55f81a18b5caabf422ee55499 [balena-renovate[bot]] </summary>

> ## meta-balena-6.11.13
> ### (2026-03-14)
> 
> * tcgtool: update to v0.1.4 [Michal Toman]
> 

</details>

# v6.11.12
## (2026-03-14)


<details>
<summary> Update layers/meta-balena to 735a3d3bf89ea21b8d6c303fcdeadac60599cf6e [balena-renovate[bot]] </summary>

> ## meta-balena-6.11.12
> ### (2026-03-14)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 6430fad [balena-renovate[bot]] </summary>
> 
>> ### leviathan-2.36.101
>> #### (2026-03-11)
>> 
>> * Update core/contracts digest to ab2042b [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.100
>> #### (2026-03-09)
>> 
>> * Update core/contracts digest to 73054ac [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.99
>> #### (2026-03-09)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.98
>> #### (2026-03-07)
>> 
>> * Update docker/setup-buildx-action action to v4 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.97
>> #### (2026-03-02)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
> 
> </details>
> 
> 
> ## meta-balena-6.11.11
> ### (2026-03-10)
> 
> 
> <details>
> <summary> Update balena-supervisor to v17.6.3 [balena-renovate[bot]] </summary>
> 
>> ### balena-supervisor-17.6.3
>> #### (2026-03-10)
>> 
>> * Only report download progress if service status is `Downloading` [Felipe Lalanne]
>> 
> 
> </details>
> 
> 

</details>

# v6.11.10+rev1
## (2026-03-11)

* linux-compulab: Pin SRC_REV to "5df4413189fa9d1f4a08101283401cfc10c80d78" [Valentin Raevsky]

# v6.11.10
## (2026-03-06)


<details>
<summary> Update layers/meta-balena to 1c606f58f07b6746f6548bcc7c9301482cdced64 [balena-renovate[bot]] </summary>

> ## meta-balena-6.11.10
> ### (2026-03-05)
> 
> * efitools: update to master [Michal Toman]
> 
> ## meta-balena-6.11.9
> ### (2026-03-04)
> 
> * recipes-support/hostapp-update-hooks: Deploy blacklisted bootloader files [Alexandru Costache]
> 

</details>

# v6.11.8+rev1
## (2026-03-05)

* Update u-boot for iotdin-imx8p in order to add new id for Samsung 2G RAM [Valentin Raevsky]

# v6.11.8
## (2026-03-03)


<details>
<summary> Update layers/meta-balena to 76525829a7ce8811faf20a1b6f20fef77c53b8c8 [balena-renovate[bot]] </summary>

> ## meta-balena-6.11.8
> ### (2026-03-03)
> 
> * hostapp-update-hooks: allow GRUB downgrade during secure boot rollbacks [Michal Toman]
> 
> ## meta-balena-6.11.7
> ### (2026-03-02)
> 
> 
> <details>
> <summary> Update balena-supervisor to v17.6.2 [balena-renovate[bot]] </summary>
> 
>> ### balena-supervisor-17.6.2
>> #### (2026-02-25)
>> 
>> * Fix storage usage over-reporting caused by duplicate mount points [Christina Ying Wang]
>> 
>> ### balena-supervisor-17.6.1
>> #### (2026-02-19)
>> 
>> * Update systeminformation to v5.30.8 [SECURITY] [balena-renovate[bot]]
>> 
>> ### balena-supervisor-17.6.0
>> #### (2026-02-17)
>> 
>> * Rewrite lock mechanism doc to include flock as well [Yann CARDAILLAC]
>> 
>> ### balena-supervisor-17.5.3
>> #### (2026-02-15)
>> 
>> * Update webpack to v5.104.1 [SECURITY] [balena-renovate[bot]]
>> 
>> ### balena-supervisor-17.5.2
>> #### (2026-02-10)
>> 
>> * Preserve unmanaged fields in extra_uEnv.txt [Christina Ying Wang]
>> 
>> ### balena-supervisor-17.5.1
>> #### (2026-02-10)
>> 
>> * Do not rely on container timestamps to check for dependency start [felipe]
>> 
> 
> </details>
> 
> 

</details>

# v6.11.6+rev1
## (2026-03-03)


<details>
<summary> Update balena-yocto-scripts to 2649a8d9024a2986d092dff178da9bd14c39f189 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.28
> ### (2026-02-18)
> 
> * Update aws/aws-cli to v2.33.25 [balena-renovate[bot]]
> 

</details>

# v6.11.6
## (2026-02-28)


<details>
<summary> Update layers/meta-balena to c6c602f5c38634517f130fd5b6573c7fc472480f [balena-renovate[bot]] </summary>

> ## meta-balena-6.11.6
> ### (2026-02-28)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 4ac50e6 [balena-renovate[bot]] </summary>
> 
>> ### leviathan-2.36.96
>> #### (2026-02-28)
>> 
>> * Update balena-os/leviathan-worker to v2.10.29 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.95
>> #### (2026-02-28)
>> 
>> * Update actions/upload-artifact action to v7 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.94
>> #### (2026-02-25)
>> 
>> * Update balena-os/leviathan-worker to v2.10.27 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.93
>> #### (2026-02-23)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.92
>> #### (2026-02-16)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.91
>> #### (2026-02-09)
>> 
>> * Update balena-os/leviathan-worker to v2.10.26 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.90
>> #### (2026-02-09)
>> 
>> * Update balena-os/leviathan-worker to v2.10.25 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.89
>> #### (2026-02-09)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.88
>> #### (2026-02-07)
>> 
>> * Update actions/checkout digest to de0fac2 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.87
>> #### (2026-02-02)
>> 
>> * Update balena-os/leviathan-worker to v2.10.24 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.86
>> #### (2026-02-02)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.85
>> #### (2026-01-27)
>> 
>> * Update balena-os/leviathan-worker to v2.10.23 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.84
>> #### (2026-01-26)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.83
>> #### (2026-01-20)
>> 
>> * Update balena-os/leviathan-worker to v2.10.22 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.82
>> #### (2026-01-19)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.81
>> #### (2026-01-12)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.80
>> #### (2026-01-05)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
> 
> </details>
> 
> 
> ## meta-balena-6.11.5
> ### (2026-02-25)
> 
> * kernel-balena.bbclass: Enable support for traditional iptables backends for newer kernels [Florin Sarbu]
> 
> ## meta-balena-6.11.4
> ### (2026-02-23)
> 
> * tests/modem: Skip modem test on unsupported Orin device-type [Alexandru]
> 

</details>

# v6.11.3
## (2026-02-20)


<details>
<summary> Update layers/meta-balena to da0ec5aac21ee02dab8be843a37dee512ff37ffe [balena-renovate[bot]] </summary>

> ## meta-balena-6.11.3
> ### (2026-02-20)
> 
> * balena-bootloader.bbclass: disable more unnecessary drivers [Michal Toman]
> * balena-bootloader.bbclass: add spaces to BALENA_CONFIGS appends [Michal Toman]
> 
> ## meta-balena-6.11.2
> ### (2026-02-18)
> 
> * tests:modem: Disable for kontron-come-xelx [Florin Sarbu]
> 

</details>

# v6.11.1+rev1
## (2026-02-18)


<details>
<summary> Update balena-yocto-scripts to c6e9aac2a209790c00790d57b44fdce91a678159 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.27
> ### (2026-02-13)
> 
> * Remove dead AMI script and its Dockerfile dependencies [Kyle Harding]
> * Replace deprecated `balena key add` with `balena ssh-key add` [Kyle Harding]
> 

</details>

# v6.11.1
## (2026-02-17)


<details>
<summary> Update layers/meta-balena to f37c4fd776dfcec74405e137fe79e24a7a92a924 [balena-renovate[bot]] </summary>

> ## meta-balena-6.11.1
> ### (2026-02-17)
> 
> * peak: Update to version 9.0 [Florin Sarbu]
> 

</details>

# v6.11.0+rev1
## (2026-02-12)


<details>
<summary> Update balena-yocto-scripts to ce65d6b439fc7e34c2b8bdf179694f8291bd3012 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.26
> ### (2026-02-10)
> 
> * Update aws/aws-cli to v2.33.18 [balena-renovate[bot]]
> 

</details>

# v6.11.0
## (2026-02-11)


<details>
<summary> Update layers/meta-balena to 36cacf6af4faff31c3ce58f21fd781bdb45eba6e [balena-renovate[bot]] </summary>

> ## meta-balena-6.11.0
> ### (2026-02-11)
> 
> * openssh: Add sshd.socket burst protection recovery timer [Kyle Harding]
> 

</details>

# v6.10.26
## (2026-02-11)


<details>
<summary> Update layers/meta-balena to 4e641880ccacff9e6bd93183affa53ca7767f5f3 [balena-renovate[bot]] </summary>

> ## meta-balena-6.10.26
> ### (2026-02-10)
> 
> * kernel-devsrc.bb: Use recipe from OpenEmbedded Core layer for 6.18+ kernels [Florin Sarbu]
> 

</details>

# v6.10.25+rev3
## (2026-02-07)


<details>
<summary> Update balena-yocto-scripts to f7062da73711c2c5f2f33031d8ca1a91075e6998 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.25
> ### (2026-02-07)
> 
> * Update balena-io-examples/setup-balena-action action to v0.0.96 [balena-renovate[bot]]
> 

</details>

# v6.10.25+rev2
## (2026-02-07)


<details>
<summary> Update balena-yocto-scripts to 4e85bf1bf512000e456674b74cfd8cd1727a4c20 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.24
> ### (2026-02-07)
> 
> * Update aws-actions/configure-aws-credentials action to v6 [balena-renovate[bot]]
> 

</details>

# v6.10.25+rev1
## (2026-02-07)


<details>
<summary> Update balena-yocto-scripts to d24e4721220e297b44aa4ce3678a9d1324d0e58d [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.23
> ### (2026-02-06)
> 
> * Update aws/aws-cli to v2.33.17 [balena-renovate[bot]]
> 

</details>

# v6.10.25
## (2026-02-04)


<details>
<summary> Update layers/meta-balena to 98fc1f506f9a2d33106eb4e60073f2dab057e196 [balena-renovate[bot]] </summary>

> ## meta-balena-6.10.25
> ### (2026-02-03)
> 
> 
> <details>
> <summary> Update balena-supervisor to v17.5.0 [balena-renovate[bot]] </summary>
> 
>> ### balena-supervisor-17.5.0
>> #### (2026-02-03)
>> 
>> * Make withExclusive always cancel pending and running calls [Christina Ying Wang]
>> * Remove usingInferStepsLock [Christina Ying Wang]
>> * Don't generate redundant kill steps for services already stopping [Christina Ying Wang]
>> * Don't retry fetch if aborted [Christina Ying Wang]
>> * Bump docker-progress to 5.4.1 [Christina Ying Wang]
>> * Replace applyIntermediateTarget with ExclusiveRunner [Christina Ying Wang]
>> * Use ExclusiveRunner for triggerApplyTarget [Christina Ying Wang]
>> * ExclusiveRunner: Add pending call cancellation [Christina Ying Wang]
>> * ExclusiveRunner: Add running call cancellation to trigger() [Christina Ying Wang]
>> * Implement ExclusiveRunner class with mutual exclusion & priority [Christina Ying Wang]
>> 
>> ### balena-supervisor-17.4.6
>> #### (2026-02-03)
>> 
>> * Remove reference links in update-locking.md [Jonathan Berger]
>> 
>> ### balena-supervisor-17.4.5
>> #### (2026-01-22)
>> 
>> * Remove object-capturing closure in triggerFetch abortSignal [Christina Ying Wang]
>> 
>> ### balena-supervisor-17.4.4
>> #### (2026-01-22)
>> 
>> * Update lodash to v4.17.23 [SECURITY] [balena-renovate[bot]]
>> 
>> ### balena-supervisor-17.4.3
>> #### (2026-01-22)
>> 
>> * Update @balena/sbvr-types to v11 [balena-renovate[bot]]
>> 
> 
> </details>
> 
> 

</details>

* Update balena-yocto-scripts to 928e720513f0fff0a257ce03f130e8af1ac0884b [balena-renovate[bot]]

# v6.10.24+rev2
## (2026-01-31)


<details>
<summary> Update balena-yocto-scripts to cc83969226e96a3d22652ba5340135b697e366bb [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.21
> ### (2026-02-01)
> 
> * Update docker/login-action action to v3.7.0 [balena-renovate[bot]]
> 

</details>

# v6.10.24+rev1
## (2026-01-31)


<details>
<summary> Update balena-yocto-scripts to 3772d146d74e47cedde5c37625434892656221f0 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.20
> ### (2026-02-01)
> 
> * Update aws/aws-cli to v2.33.12 [balena-renovate[bot]]
> 

</details>

# v6.10.24
## (2026-01-30)


<details>
<summary> Update layers/meta-balena to 5ceed2308a1ce8a2e453f0f2890039106c1ee7b0 [balena-renovate[bot]] </summary>

> ## meta-balena-6.10.24
> ### (Invalid date)
> 
> * extra firmware test fix bbb kernel module [Yann CARDAILLAC]
> 

</details>

# v6.10.23
## (2026-01-30)


<details>
<summary> Update layers/meta-balena to 1e6d99e24e82f38c50322c6fbf9715a6746af2ef [balena-renovate[bot]] </summary>

> ## meta-balena-6.10.23
> ### (2026-01-29)
> 
> * Revert "packagegroup-resin: Add systemd-analyze to production images as well" [Kyle Harding]
> 
> ## meta-balena-6.10.22
> ### (2026-01-27)
> 
> * tests: Update kernel-module-build submodule [Alexandru Costache]
> 
> ## meta-balena-6.10.21
> ### (2026-01-26)
> 
> * classes/kernel-balena: Fix typo in kernel-balena.bbclass [Alexandru Costache]
> * Fix type allSetConfigs -> allSetKernelConfigs [Christina Ying Wang]
> 

</details>

# v6.10.20+rev2
## (2026-01-29)


<details>
<summary> Update balena-yocto-scripts to d4705f993634d478dac6b2dedcc0dad87b97f43f [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.19
> ### (2026-01-27)
> 
> * Update aws/aws-cli to v2.33.7 [balena-renovate[bot]]
> 

</details>

# v6.10.20+rev1
## (2026-01-27)

* balena-image: Add the imx-firmware-mrvl to the IMAGE_INSTALL list. [Valentin Raevsky]

# v6.10.20
## (2026-01-26)


<details>
<summary> Update layers/meta-balena to f9543178d5ecb5b633cc139a0a56ce0b17ecce67 [balena-renovate[bot]] </summary>

> ## meta-balena-6.10.20
> ### (2026-01-26)
> 
> * Update actions/setup-python digest to a309ff8 [balena-renovate[bot]]
> 
> ## meta-balena-6.10.19
> ### (2026-01-23)
> 
> * Further reduce the size of the balena bootloader by removing PTP clock support [Florin Sarbu]
> 

</details>

# v6.10.18+rev3
## (2026-01-24)


<details>
<summary> Update balena-yocto-scripts to c512c72fb79574c4a51e4295d5d5c70d25f601ee [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.18
> ### (2026-01-24)
> 
> * Update actions/checkout action to v6.0.2 [balena-renovate[bot]]
> 

</details>

# v6.10.18+rev2
## (2026-01-23)


<details>
<summary> Update balena-yocto-scripts to 8dab33579c6e2fbafed0ca57735a6b0c0da40379 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.17
> ### (2026-01-22)
> 
> * Update aws/aws-cli to v2.33.5 [balena-renovate[bot]]
> 

</details>

# v6.10.18+rev1
## (2026-01-22)


<details>
<summary> Update balena-yocto-scripts to a64a7325c164749c5fcdd46468d29b43f232c733 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.16
> ### (2026-01-20)
> 
> * Update Lock file maintenance [balena-renovate[bot]]
> 

</details>

# v6.10.18
## (2026-01-22)


<details>
<summary> Update layers/meta-balena to 317c51a00a2f0cfcfb8d7b5c4ff4de0346d1382b [balena-renovate[bot]] </summary>

> ## meta-balena-6.10.18
> ### (2026-01-21)
> 
> * initrdscripts: export IS_ROLLBACK and ROOT_PART flags from abroot script [Michal Toman]
> * initrdscripts: add extrafw script [Michal Toman]
> * initrdscripts: separate mounting boot partition from abroot [Michal Toman]
> 

</details>

# v6.10.17
## (2026-01-21)


<details>
<summary> Update layers/meta-balena to 5fdbeb1984d50a9f7c9a5e5404771838c2670d67 [balena-renovate[bot]] </summary>

> ## meta-balena-6.10.17
> ### (2026-01-21)
> 
> * Update vacuum-size to 128M to match vacuum.conf and journald-balena-os.conf [Chris Sawer]
> 
> ## meta-balena-6.10.16
> ### (2026-01-20)
> 
> * os-helpers: safe-reboot: always sync filesystem before reboot [Alex Gonzalez]
> 

</details>

# v6.10.15+rev6
## (2026-01-18)


<details>
<summary> Update balena-yocto-scripts to cd15ea0a40c052c6afd138282fb3971d7da9ff08 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.15
> ### (2026-01-17)
> 
> * Update aws/aws-cli to v2.33.2 [balena-renovate[bot]]
> 

</details>

# v6.10.15+rev5
## (2026-01-17)


<details>
<summary> Update balena-yocto-scripts to bccb2c71b193c49e3134680ac8cd2713c751dfb0 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.14
> ### (2026-01-17)
> 
> * Update balena-io/balena-cli to v23.2.30 [balena-renovate[bot]]
> 

</details>

# v6.10.15+rev4
## (2026-01-17)


<details>
<summary> Update balena-yocto-scripts to 238b5924af314b07b34b8d15c7aed134a5438bc4 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.13
> ### (2026-01-17)
> 
> * Update balena-io-examples/setup-balena-action action to v0.0.95 [balena-renovate[bot]]
> 

</details>

# v6.10.15+rev3
## (2026-01-14)


<details>
<summary> Update balena-yocto-scripts to 9f18bf21add2a8a3ffa0b96aba7416ba2d752e27 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.12
> ### (2026-01-14)
> 
> * Update aws/aws-cli to v2.32.34 [balena-renovate[bot]]
> 

</details>

# v6.10.15+rev2
## (2026-01-14)


<details>
<summary> Update balena-yocto-scripts to 829fc3c99e238dd8a4f2c4bbfa84fac209e2b351 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.11
> ### (2026-01-14)
> 
> * Update actions/upload-artifact action to v6 [balena-renovate[bot]]
> 

</details>

# v6.10.15+rev1
## (2026-01-14)


<details>
<summary> Update balena-yocto-scripts to d3e228e92b3c9f714f4514206f085fa76c2f6629 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.10
> ### (2026-01-13)
> 
> * yocto-build-deploy.yml: Search for build logs only in the location where they are produced [Florin Sarbu]
> 

</details>

# v6.10.15
## (2026-01-12)


<details>
<summary> Update layers/meta-balena to 45031eb688e478a90151d1d48e79ad86c0b27b19 [balena-renovate[bot]] </summary>

> ## meta-balena-6.10.15
> ### (2026-01-12)
> 
> * os-helpers/os-helpers-bootloader-config: Add support for whitelisted cmdline args [Alexandru Costache]
> 

</details>

# v6.10.14
## (2026-01-09)


<details>
<summary> Update layers/meta-balena to 26357df251e2f5212058b3c69bde358d0fe54277 [balena-renovate[bot]] </summary>

> ## meta-balena-6.10.14
> ### (2026-01-09)
> 
> * initrdscripts: Unlock mutex if regenerate_uuid fails in fsuuidsinit [Michal Toman]
> 

</details>

# v6.10.13
## (2026-01-08)


<details>
<summary> Update layers/meta-balena to d8e6c3344e1befd254005d7f10bdaba1faec3581 [balena-renovate[bot]] </summary>

> ## meta-balena-6.10.13
> ### (2026-01-08)
> 
> * tests/extra-firmware: Skip post-reboot extra-firmware check for a specific device [Alexandru Costache]
> 

</details>

# v6.10.12
## (2026-01-08)


<details>
<summary> Update layers/meta-balena to ddde29d03054dd90b92b95062c4d8021e1570edc [balena-renovate[bot]] </summary>

> ## meta-balena-6.10.12
> ### (2026-01-08)
> 
> * Reduce the size of the balena bootloader by removing unused functionality [Florin Sarbu]
> 

</details>

# v6.10.11
## (2026-01-07)


<details>
<summary> Update layers/meta-balena to 5d184563c8edc5aeb6815c0e49859fb5259013d4 [balena-renovate[bot]] </summary>

> ## meta-balena-6.10.11
> ### (2026-01-07)
> 
> 
> <details>
> <summary> Update balena-supervisor to v17.4.2 [balena-renovate[bot]] </summary>
> 
>> ### balena-supervisor-17.4.2
>> #### (2026-01-06)
>> 
>> * Parse multiple child contracts listed under an `or` clause [Christina Ying Wang]
>> 
> 
> </details>
> 
> 

</details>

# v6.10.10+rev1
## (2026-01-06)


<details>
<summary> Update balena-yocto-scripts to bf41c3ab59edafcb639f490752f7008d8a2d3c0d [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.9
> ### (2026-01-03)
> 
> * Update actions/download-artifact action to v7 [balena-renovate[bot]]
> 

</details>

# v6.10.10
## (2026-01-06)


<details>
<summary> Update layers/meta-balena to 7054e72ec48b6e64ad89547b1a4ed44602348efb [balena-renovate[bot]] </summary>

> ## meta-balena-6.10.10
> ### (2026-01-06)
> 
> 
> <details>
> <summary> Update balena-supervisor to v17.4.1 [balena-renovate[bot]] </summary>
> 
>> ### balena-supervisor-17.4.1
>> #### (2026-01-05)
>> 
>> * backends: Enable configurable power modes and fan profiles for all Jetson Orin devices [Alexandru Costache]
>> 
> 
> </details>
> 
> 
> ## meta-balena-6.10.9
> ### (2026-01-04)
> 
> * kernel-balena.bbclass: Enable DMA-BUF memory heaps [Michal Toman]
> 
> ## meta-balena-6.10.8
> ### (2026-01-01)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to c2b518d [balena-renovate[bot]] </summary>
> 
>> ### leviathan-2.36.79
>> #### (2025-12-29)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.78
>> #### (2025-12-22)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
> 
> </details>
> 
> 

</details>

# v6.10.7+rev1
## (2026-01-03)


<details>
<summary> Update balena-yocto-scripts to 6f9a7a6232cd420bb441bf9dea461119ac32f239 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.8
> ### (2026-01-02)
> 
> * Update balena-io/balena-cli to v23.2.14 [balena-renovate[bot]]
> 

</details>

# v6.10.7
## (2026-01-01)


<details>
<summary> Update layers/meta-balena to 7128780e50b5c78f5b7a95cd8adaca6f5aaff44e [balena-renovate[bot]] </summary>

> ## meta-balena-6.10.7
> ### (Invalid date)
> 
> * add extra firmware tests [Yann CARDAILLAC]
> * recipes-support/os-extra-firmware: Extract extra-firmware volume data path [Alexandru Costache]
> 

</details>

# v6.10.6+rev2
## (2025-12-31)


<details>
<summary> Update balena-yocto-scripts to d8ce8169949e64dbf2bf58aa9f10ac4b7103076d [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.7
> ### (Invalid date)
> 
> * Update Lock file maintenance [balena-renovate[bot]]
> 

</details>

# v6.10.6+rev1
## (2025-12-30)


<details>
<summary> Update balena-yocto-scripts to 6ed7f28e2ad3c545946bfcebfc29b25e3359d63a [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.6
> ### (Invalid date)
> 
> * Fix condition to check for test suites in workflow [Kyle Harding]
> 
> ## balena-yocto-scripts-1.39.5
> ### (2025-12-29)
> 
> * Update aws/aws-cli to v2.32.25 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.39.4
> ### (2025-12-29)
> 
> * Update GitHub Actions [balena-renovate[bot]]
> 

</details>

# v6.10.6
## (2025-12-25)


<details>
<summary> Update layers/meta-balena to 8cd6c8ecaae04beabee77873db6407b8eda4d805 [balena-renovate[bot]] </summary>

> ## meta-balena-6.10.6
> ### (2025-12-24)
> 
> 
> <details>
> <summary> Update balena-supervisor to v17.4.0 [balena-renovate[bot]] </summary>
> 
>> ### balena-supervisor-17.4.0
>> #### (2025-12-19)
>> 
>> * Support sw.kernel version and slug requirements for container contracts [Christina Ying Wang]
>> * Support sw.os version and slug requirements for container contracts [Christina Ying Wang]
>> 
>> ### balena-supervisor-17.3.6
>> #### (2025-12-18)
>> 
>> * Update systeminformation to v5.27.14 [SECURITY] [balena-renovate[bot]]
>> 
>> ### balena-supervisor-17.3.5
>> #### (2025-12-18)
>> 
>> * patch: only apply noop for download-then-kill strategy and fix integration tests [Rob Thein]
>> * patch: Fix premature locking for metadata-only changes [Rob Thein]
>> 
>> ### balena-supervisor-17.3.4
>> #### (2025-12-18)
>> 
>> * Update tsconfig.module to node20 and TS to 5.9.x [felipe]
>> 
>> ### balena-supervisor-17.3.3
>> #### (2025-12-16)
>> 
>> * Log errors and warnings to stderr [felipe]
>> * Revert moduleResolution to node16 [felipe]
>> 
>> ### balena-supervisor-17.3.2
>> #### (2025-12-16)
>> 
>> * Update tsconfig targets for node22 [Pagan Gazzard]
>> 
>> ### balena-supervisor-17.3.1
>> #### (2025-12-15)
>> 
>> * Remove unused direct dependency on pinejs-client-core [Pagan Gazzard]
>> 
>> ### balena-supervisor-17.3.0
>> #### (2025-12-15)
>> 
>> * Purge extra-firmware system volume with purge action [Christina Ying Wang]
>> * Configure services to use extra-firmware volume if feature label present [Christina Ying Wang]
>> * Create extra firmware volume on startup and write volume to config.json [Christina Ying Wang]
>> 
>> ### balena-supervisor-17.2.5
>> #### (2025-12-15)
>> 
>> * Update lint-staged to v16 [balena-renovate[bot]]
>> 
>> ### balena-supervisor-17.2.4
>> #### (2025-12-15)
>> 
>> * Update @types/sinon to v21 [balena-renovate[bot]]
>> 
>> ### balena-supervisor-17.2.3
>> #### (2025-12-15)
>> 
>> * Update @balena/compose to v7 [balena-renovate[bot]]
>> 
> 
> </details>
> 
> 
> ## meta-balena-6.10.5
> ### (2025-12-23)
> 
> * classes/kernel-balena: Enable support for xz firmware compression [Alexandru]
> 

</details>

# v6.10.4+rev2
## (2025-12-25)

* linux-firmware: Remove Balena created wifi packages [Florin Sarbu]

# v6.10.4+rev1
## (2025-12-24)

* Update meta-compulab-bsp to latest scarthgap [Florin Sarbu]

# v6.10.4
## (2025-12-20)


<details>
<summary> Update layers/meta-balena to a5bae83f8032f24e17f47af3673f7eda96561f0c [balena-renovate[bot]] </summary>

> ## meta-balena-6.10.4
> ### (2025-12-20)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to c80702b [balena-renovate[bot]] </summary>
> 
>> ### leviathan-2.36.77
>> #### (2025-12-20)
>> 
>> * Update docker/setup-buildx-action digest to 8d2750c [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.76
>> #### (2025-12-19)
>> 
>> * Update balena-os/leviathan-worker to v2.10.20 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.75
>> #### (2025-12-19)
>> 
>> * Core: worker: enable configurable flashing timeout [Ryan Cooke]
>> 
>> ### leviathan-2.36.74
>> #### (2025-12-16)
>> 
>> * Update balena-os/leviathan-worker to v2.10.18 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.73
>> #### (2025-12-15)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.72
>> #### (2025-12-13)
>> 
>> * Update actions/upload-artifact action to v6 [balena-renovate[bot]]
>> 
> 
> </details>
> 
> 

</details>

# v6.10.3
## (2025-12-20)


<details>
<summary> Update layers/meta-balena to 560b3c5c44d1c99dfb8fdd2cb790d28e366374f1 [balena-renovate[bot]] </summary>

> ## meta-balena-6.10.3
> ### (2025-12-15)
> 
> * remove disk watchdog logs [Yann CARDAILLAC]
> 
> ## meta-balena-6.10.2
> ### (2025-12-13)
> 
> 
> <details>
> <summary> Update balena-supervisor to v17.2.2 [balena-renovate[bot]] </summary>
> 
>> ### balena-supervisor-17.2.2
>> #### (2025-12-11)
>> 
>> * Improve issue of very early container logs potentially being dropped [Pagan Gazzard]
>> 
> 
> </details>
> 
> 

</details>

# v6.10.1+rev1
## (2025-12-20)


<details>
<summary> Update balena-yocto-scripts to ea6132dc7a5e420392215ce41d19b1617f793af8 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.3
> ### (2025-12-19)
> 
> * Update aws/aws-cli to v2.32.21 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.39.2
> ### (2025-12-17)
> 
> * Update aws/aws-cli to v2.32.18 [balena-renovate[bot]]
> 

</details>

# v6.10.1
## (2025-12-12)


<details>
<summary> Update layers/meta-balena to f8542a3b92f2c76f7051477d298422f7cdd5238b [balena-renovate[bot]] </summary>

> ## meta-balena-6.10.1
> ### (2025-12-11)
> 
> * balena-os.inc: Enable firmware compression by default [Michal Toman]
> 

</details>

# v6.10.0+rev1
## (2025-12-12)


<details>
<summary> Update balena-yocto-scripts to 8cbefeedbc99bb8a29a28e9540dee75e216b172f [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.39.1
> ### (2025-12-11)
> 
> * Update aws/aws-cli to v2.32.15 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.39.0
> ### (2025-12-03)
> 
> * verify that keys from SIGN_KMOD_KEY_APPEND ends up properly in kernel [Yann CARDAILLAC]
> 
> ## balena-yocto-scripts-1.38.99
> ### (2025-12-03)
> 
> * Update aws/aws-cli to v2.32.8 [balena-renovate[bot]]
> 

</details>

# v6.10.0
## (2025-12-11)


<details>
<summary> Update layers/meta-balena to df3211d5c6f07b9732f5d9a69087bccc0b55d022 [balena-renovate[bot]] </summary>

> ## meta-balena-6.10.0
> ### (2025-12-11)
> 
> * networkmanager: update to 1.52.0 [Michal Toman]
> 
> ## meta-balena-6.9.6
> ### (2025-12-11)
> 
> * renovate.json: Remove custom balena-git package rules [Kyle Harding]
> 
> ## meta-balena-6.9.5
> ### (2025-12-10)
> 
> * fix initramfs rootfs script wrong indent [Yann CARDAILLAC]
> 
> ## meta-balena-6.9.4
> ### (2025-12-10)
> 
> * Update actions/checkout action to v6 [balena-renovate[bot]]
> 
> ## meta-balena-6.9.3
> ### (2025-12-09)
> 
> * Update actions/setup-python digest to 83679a8 [balena-renovate[bot]]
> 

</details>

# v6.9.2
## (2025-12-09)


<details>
<summary> Update layers/meta-balena to 6bfa26bd140e368e06d72af56cbfc8133f9f0b33 [balena-renovate[bot]] </summary>

> ## meta-balena-6.9.2
> ### (2025-12-08)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 0545105 [balena-renovate[bot]] </summary>
> 
>> ### leviathan-2.36.71
>> #### (2025-12-08)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.70
>> #### (2025-12-06)
>> 
>> * Update actions/checkout digest to 8e8c483 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.69
>> #### (2025-12-01)
>> 
>> * Update balena-os/leviathan-worker to v2.10.17 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.68
>> #### (2025-12-01)
>> 
>> * Update balena-os/leviathan-worker to v2.10.16 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.67
>> #### (2025-12-01)
>> 
>> * Update balena-os/leviathan-worker to v2.10.15 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.66
>> #### (2025-12-01)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.65
>> #### (2025-11-22)
>> 
>> * Update actions/checkout action to v6 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.64
>> #### (2025-11-14)
>> 
>> * Update balena-io/balena-cli to v22.5.5 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.63
>> #### (2025-11-11)
>> 
>> * Update balena-io/balena-cli to v22.4.17 [balena-renovate[bot]]
>> 
> 
> </details>
> 
> 
> ## meta-balena-6.9.1
> ### (2025-12-08)
> 
> * peak: Update to version 8.20.0 [Florin Sarbu]
> 
> ## meta-balena-6.9.0
> ### (2025-12-07)
> 
> * Update ModemManager to 1.24.2 [Florin Sarbu]
> 
> ## meta-balena-6.8.7
> ### (2025-12-04)
> 
> * linux-firmware: Revert packaging i915 firmware by SoC generations [Florin Sarbu]
> 
> ## meta-balena-6.8.6
> ### (2025-12-04)
> 
> * tests: os: secureboot: skip bootloader integrity for imx8mp-var-dart-pl1000pp [Alex Gonzalez]
> 
> ## meta-balena-6.8.5
> ### (2025-12-03)
> 
> * recipes-support/os-extra-firmware: Add service for configuring extra fw search path [Alexandru Costache]
> 
> ## meta-balena-6.8.4
> ### (2025-12-03)
> 
> * linux-firmware_20240909.bb: Fix packaging amdgpu and various other firmware [Florin Sarbu]
> 
> ## meta-balena-6.8.3
> ### (2025-12-02)
> 
> 
> <details>
> <summary> Update balena-supervisor to v17.2.1 [balena-renovate[bot]] </summary>
> 
>> ### balena-supervisor-17.2.1
>> #### (2025-11-19)
>> 
>> * Fix state engine tests failing with newer version of docker [felipe]
>> * Await provisioning on error before continuing [felipe]
>> 
>> ### balena-supervisor-17.2.0
>> #### (2025-11-03)
>> 
>> * Support io.balena.features.host-os.board-rev feature label [Christina Ying Wang]
>> 
>> ### balena-supervisor-17.1.10
>> #### (Invalid date)
>> 
>> * Stream logs from host os-update.service [Christina Ying Wang]
>> 
>> ### balena-supervisor-17.1.9
>> #### (2025-10-18)
>> 
>> * Update balena-io/deploy-to-balena-action action to v2.0.136 [balena-renovate[bot]]
>> 
>> ### balena-supervisor-17.1.8
>> #### (2025-10-17)
>> 
>> * Do not block calls to dbus reboot/shutdown [Felipe Lalanne]
>> 
>> ### balena-supervisor-17.1.7
>> #### (2025-10-16)
>> 
>> * Update deep-object-diff to v1.1.9 [balena-renovate[bot]]
>> 
>> ### balena-supervisor-17.1.6
>> #### (2025-10-16)
>> 
>> * Add back python3 distutils with py3-setuptools [Christina Ying Wang]
>> * Bump dependencies [Christina Ying Wang]
>> 
>> ### balena-supervisor-17.1.5
>> #### (2025-10-16)
>> 
>> * fix(2433): Fix redaction of secrets in env variables logging [Tomas Mella]
>> 
>> ### balena-supervisor-17.1.4
>> #### (2025-10-15)
>> 
>> * Only publish + finalize arm64 & amd64 for staging [Christina Ying Wang]
>> 
>> ### balena-supervisor-17.1.3
>> #### (2025-09-29)
>> 
>> * Clarify that a process should hold a lockfile [Christina Ying Wang]
>> 
> 
> </details>
> 
> 
> ## meta-balena-6.8.2
> ### (2025-12-02)
> 
> * usb-modeswitch-data: Fix packaging for merged usr [Florin Sarbu]
> 
> ## meta-balena-6.8.1
> ### (2025-11-27)
> 
> * Upgrade linux-firmware from 20230404 to 20240909 [Florin Sarbu]
> 
> ## meta-balena-6.8.0
> ### (2025-11-21)
> 
> * balena: disable buildkit and dependencies with no_buildkit tag [Kyle Harding]
> * balena: Rebase patches onto upstream Moby v20.10.27 [Kyle Harding]
> * go: Update to 1.22.12 for compatibility with balena v20.10.27 [Kyle Harding]
> 
> ## meta-balena-6.7.8
> ### (2025-11-21)
> 
> * os-helpers: generalize get_sector_size [Alex Gonzalez]
> * tests: secureboot: generalize U-boot binary naming [Alex Gonzalez]
> 
> ## meta-balena-6.7.7
> ### (2025-11-18)
> 
> * simplify disk watchdog tests [Yann CARDAILLAC]
> 
> ## meta-balena-6.7.6
> ### (2025-11-13)
> 
> * Update actions/setup-python action to v6 [balena-renovate[bot]]
> 
> ## meta-balena-6.7.5
> ### (2025-11-12)
> 
> * kernel-balena.bbclass: Enable required CONFIG_CGROUP_BPF [Florin Sarbu]
> 
> ## meta-balena-6.7.4
> ### (2025-11-08)
> 
> * add CONFIG_DM_FLAKEY for disk-watchdog testing [Yann CARDAILLAC]
> 
> ## meta-balena-6.7.3
> ### (2025-11-07)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to c549c54 [balena-renovate[bot]] </summary>
> 
>> ### leviathan-2.36.62
>> #### (2025-11-06)
>> 
>> * Update balena-os/leviathan-worker to v2.10.14 [balena-renovate[bot]]
>> 
> 
> </details>
> 
> 
> ## meta-balena-6.7.2
> ### (2025-11-07)
> 
> * balena-os.inc: Enforce PACKAGE_CLASSES to package_ipk [Florin Sarbu]
> 
> ## meta-balena-6.7.1
> ### (2025-11-06)
> 
> * packagegroups/packagegroup-resin-flasher: Set PACKAGE_ARCH [Alexandru Costache]
> * tests/suites: Use USB relay to toggle boot switch on certain devices [Alexandru Costache]
> 
> ## meta-balena-6.7.0
> ### (2025-11-05)
> 
> * add disk-watchdog daemon [Yann CARDAILLAC]
> 
> ## meta-balena-6.6.17
> ### (2025-11-03)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 2a3a310 [balena-renovate[bot]] </summary>
> 
>> ### leviathan-2.36.61
>> #### (2025-11-03)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.60
>> #### (2025-11-01)
>> 
>> * Update balena-os/leviathan-worker to v2.10.12 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.59
>> #### (Invalid date)
>> 
>> * Update balena-io/balena-cli to v22.4.16 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.58
>> #### (2025-10-27)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.57
>> #### (2025-10-25)
>> 
>> * Update balena-os/leviathan-worker to v2.10.11 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.56
>> #### (2025-10-25)
>> 
>> * Update actions/upload-artifact action to v5 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.55
>> #### (2025-10-21)
>> 
>> * Update balena-io/balena-cli to v22.4.15 [balena-renovate[bot]]
>> 
> 
> </details>
> 
> 
> ## meta-balena-6.6.16
> ### (2025-10-29)
> 
> * recipes-support/balena-config-vars: Avoid failure caused by race in cache file creation [Alexandru Costache]
> 
> ## meta-balena-6.6.15
> ### (2025-10-28)
> 
> * Remove non-autokit DTs from build list [Ryan Cooke]
> 
> ## meta-balena-6.6.14
> ### (2025-10-20)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 19c382d [balena-renovate[bot]] </summary>
> 
>> ### leviathan-2.36.54
>> #### (2025-10-20)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.53
>> #### (2025-10-17)
>> 
>> * Update balena-io/balena-cli to v22.4.14 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.52
>> #### (2025-10-14)
>> 
>> * Update balena-io/balena-cli to v22.4.13 [balena-renovate[bot]]
>> 
> 
> </details>
> 
> 
> ## meta-balena-6.6.13
> ### (2025-10-16)
> 
> * kernel-balena.bbclass: Fix zram failure when setting algorithm [Alexandru]
> 
> ## meta-balena-6.6.12
> ### (2025-10-14)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 8a590d2 [balena-renovate[bot]] </summary>
> 
>> ### leviathan-2.36.51
>> #### (2025-10-13)
>> 
>> * Update balena-io/balena-cli to v22.4.12 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.50
>> #### (2025-10-13)
>> 
>> * Update balena-os/leviathan-worker to v2.10.10 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.49
>> #### (2025-10-13)
>> 
>> * Update balena-io/balena-cli to v22.4.11 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.48
>> #### (2025-10-13)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
> 
> </details>
> 
> 
> ## meta-balena-6.6.11
> ### (2025-10-10)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 9cb148e [balena-renovate[bot]] </summary>
> 
>> ### leviathan-2.36.47
>> #### (2025-10-09)
>> 
>> * Update balena-io/balena-cli to v22.4.10 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.46
>> #### (2025-10-06)
>> 
>> * Update balena-os/leviathan-worker to v2.10.9 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.45
>> #### (2025-10-06)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
> 
> </details>
> 
> 
> ## meta-balena-6.6.10
> ### (2025-10-03)
> 
> * meta-balena-common: Consistently prepend spaces when using append [Alexandru Costache]
> 
> ## meta-balena-6.6.9
> ### (2025-09-29)
> 
> 
> <details>
> <summary> Update balena-supervisor to v17.1.2 [balena-renovate[bot]] </summary>
> 
>> ### balena-supervisor-17.1.2
>> #### (2025-07-28)
>> 
>> * config/backends/power-fan: Enable configurable power and fan for Forecr DSBOARD ORNX Nano 8GB [Alexandru Costache]
>> 
>> ### balena-supervisor-17.1.1
>> #### (2025-06-09)
>> 
>> * Remove memory healthcheck [Christina Ying Wang]
>> 
>> ### balena-supervisor-17.1.0
>> #### (2025-05-28)
>> 
>> * Support target state apply cancellation [Christina Ying Wang]
>> 
>> ### balena-supervisor-17.0.5
>> #### (2025-05-27)
>> 
>> * Exclude reclaimable slab memory from used memory metric [Ken Bannister]
>> 
>> ### balena-supervisor-17.0.4
>> #### (2025-05-22)
>> 
>> * Remove unsupported fields from contract requirements [Felipe Lalanne]
>> 
> 
> </details>
> 
> 
> ## meta-balena-6.6.8
> ### (2025-09-29)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 73d4851 [balena-renovate[bot]] </summary>
> 
>> ### leviathan-2.36.44
>> #### (2025-09-29)
>> 
>> * Update balena-os/leviathan-worker to v2.10.8 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.43
>> #### (2025-09-29)
>> 
>> * Update balena-io/balena-cli to v22.4.9 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.42
>> #### (2025-09-29)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.41
>> #### (2025-09-23)
>> 
>> * Update balena-io/balena-cli to v22.4.8 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.40
>> #### (2025-09-23)
>> 
>> * Update balena-os/leviathan-worker to v2.10.7 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.39
>> #### (2025-09-22)
>> 
>> * Update balena-io/balena-cli to v22.4.7 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.38
>> #### (2025-09-22)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
> 
> </details>
> 
> 
> ## meta-balena-6.6.7
> ### (2025-09-19)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to d9e2486 [balena-renovate[bot]] </summary>
> 
>> ### leviathan-2.36.37
>> #### (2025-09-18)
>> 
>> * Update balena-io/balena-cli to v22.4.6 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.36
>> #### (2025-09-17)
>> 
>> * Update balena-io/balena-cli to v22.4.5 [balena-renovate[bot]]
>> 
> 
> </details>
> 
> 
> ## meta-balena-6.6.6
> ### (2025-09-17)
> 
> * Condition the start of update-balena-supervisor.service after internet connectivity [Florin Sarbu]
> 
> ## meta-balena-6.6.5
> ### (2025-09-15)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 3e61af4 [balena-renovate[bot]] </summary>
> 
>> ### leviathan-2.36.35
>> #### (2025-09-15)
>> 
>> * Update balena-io/balena-cli to v22.4.4 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.34
>> #### (2025-09-15)
>> 
>> * worker: extend total flashing timeout to 25 minutes [Alex Gonzalez]
>> 
>> ### leviathan-2.36.33
>> #### (2025-09-15)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.32
>> #### (2025-09-11)
>> 
>> * Core: worker: remove exponential backoff on flash status check [Ryan Cooke]
>> 
>> ### leviathan-2.36.31
>> #### (2025-09-10)
>> 
>> * Update balena-io/balena-cli to v22.4.3 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.30
>> #### (2025-09-10)
>> 
>> * Update balena-io/balena-cli to v22.4.2 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.29
>> #### (2025-09-08)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.28
>> #### (2025-09-02)
>> 
>> * Update balena-io/balena-cli to v22.4.1 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.27
>> #### (2025-09-02)
>> 
>> * Update balena-io/balena-cli to v22.4.0 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.26
>> #### (2025-09-02)
>> 
>> * Update balena-io/balena-cli to v22.3.4 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.25
>> #### (2025-09-02)
>> 
>> * Update balena-io/balena-cli to v22.3.3 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.24
>> #### (2025-09-02)
>> 
>> * Update balena-io/balena-cli to v22.3.1 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.23
>> #### (2025-09-01)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.22
>> #### (2025-08-29)
>> 
>> * Update balena-io/balena-cli to v22.3.0 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.21
>> #### (2025-08-25)
>> 
>> * Update balena-os/leviathan-worker to v2.10.6 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.20
>> #### (2025-08-25)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.19
>> #### (2025-08-18)
>> 
>> * Update balena-os/leviathan-worker to v2.10.5 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.18
>> #### (2025-08-18)
>> 
>> * Update balena-os/leviathan-worker to v2.10.4 [balena-renovate[bot]]
>> 
>> ### leviathan-2.36.17
>> #### (2025-08-18)
>> 
>> * Update Lock file maintenance [balena-renovate[bot]]
>> 
> 
> </details>
> 
> 
> ## meta-balena-6.6.4
> ### (2025-09-03)
> 
> * Fail if IOMMU is disabled on secure boot systems [Michal Toman]
> 
> ## meta-balena-6.6.3
> ### (2025-08-29)
> 
> * recipes-connectivity/libnss-ato: Do not hardcode the homedir for user root [Florin Sarbu]
> 
> ## meta-balena-6.6.2
> ### (2025-08-26)
> 
> * linux-firmware: Ensure Intel AX210 firmware can be installed [Alexandru Costache]
> 
> ## meta-balena-6.6.1
> ### (2025-08-25)
> 
> * Remove the AX102 requirement for secure boot tests [Kyle Harding]
> 
> ## meta-balena-6.6.0
> ### (2025-08-23)
> 
> * minor: remove ssh service from os-config.json [Edwin Joassart]
> 
> ## meta-balena-6.5.55
> ### (2025-08-22)
> 
> * patch: add metadata to improve balena-engine cve tracking [Edwin Joassart]
> 
> ## meta-balena-6.5.54
> ### (2025-08-21)
> 
> * recipes-connectivity/balena-proxy-config: Clean-up redsocks rules by index [Alexandru Costache]
> 

</details>

# v6.5.53+rev53
## (2025-12-03)


<details>
<summary> Update balena-yocto-scripts to faac8aa73d42ccb9b14c3c86ecc7419776cd83ce [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.98
> ### (2025-12-02)
> 
> * Update balena-io/balena-cli to v23.2.2 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.97
> ### (2025-11-29)
> 
> * Update GitHub Actions [balena-renovate[bot]]
> * Update aws/aws-cli to v2.32.4 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev52
## (2025-11-25)


<details>
<summary> Update balena-yocto-scripts to 2b1cf90fb0333b1d8cdb2c3dbf041fd109e563a2 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.96
> ### (2025-11-24)
> 
> * workflows: Add Generic x86_64 (GPT) and Generic AARCH64 device tests [Kyle Harding]
> * Dockerfile_yocto-build-env: Avoid balena CLI duplicate install [Kyle Harding]
> 

</details>

# v6.5.53+rev51
## (2025-11-22)


<details>
<summary> Update balena-yocto-scripts to 6a399312257153d5bc3577e9e7120acdf68a4f1a [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.95
> ### (2025-11-22)
> 
> * Update actions/create-github-app-token action to v2.2.0 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev50
## (2025-11-22)


<details>
<summary> Update balena-yocto-scripts to a43efa088b39da73ff625ad47edc1eed68b25c99 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.94
> ### (2025-11-22)
> 
> * Update actions/checkout action to v6 [balena-renovate[bot]]
> * Update balena-io/balena-cli to v23.2.0 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.93
> ### (2025-11-22)
> 
> * Update aws/aws-cli to v2.32.3 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev49
## (2025-11-21)


<details>
<summary> Update balena-yocto-scripts to 4f6c5853110697283bfc935cae28ca50f3998e79 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.92
> ### (2025-11-20)
> 
> * Update aws/aws-cli to v2.32.2 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev48
## (2025-11-20)


<details>
<summary> Update balena-yocto-scripts to dfa25a6c2cf888c6edcf47ecd28ff3ac74a313d2 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.91
> ### (2025-11-19)
> 
> * Update aws/aws-cli to v2.31.39 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev47
## (2025-11-19)


<details>
<summary> Update balena-yocto-scripts to 6c829e8ed3fd5307f40fc001075aa2dcdba6b94c [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.90
> ### (2025-11-19)
> 
> * Update balena-io/balena-cli to v23.1.2 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.89
> ### (2025-11-18)
> 
> * Update balena-io/balena-cli to v23.1.1 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev46
## (2025-11-18)


<details>
<summary> Update balena-yocto-scripts to 67b90ae49c2a0b5384617deae749f452e689323e [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.88
> ### (2025-11-18)
> 
> * Update balena-io/balena-cli to v23.0.1 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.87
> ### (2025-11-18)
> 
> * Update aws/aws-cli to v2.31.38 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.86
> ### (2025-11-17)
> 
> * Update balena-io/balena-cli to v23 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev45
## (2025-11-15)


<details>
<summary> Update balena-yocto-scripts to aa3c5b3056ba6bb612ed8f0fa372d31d7857e572 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.85
> ### (2025-11-15)
> 
> * Update balena-io-examples/setup-balena-action action to v0.0.60 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev44
## (2025-11-15)


<details>
<summary> Update balena-yocto-scripts to 646d5e4f6bcc6b4403595dceb58440ea0fd2c58b [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.84
> ### (2025-11-14)
> 
> * Update aws/aws-cli to v2.31.37 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.83
> ### (2025-11-14)
> 
> * Update balena-io/balena-cli to v22.5.5 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev43
## (2025-11-14)


<details>
<summary> Update balena-yocto-scripts to bec86b37a9c9a1cc5de67bd5ef076b2c82f4db89 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.82
> ### (2025-11-14)
> 
> * Update aws/aws-cli to v2.31.36 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.81
> ### (2025-11-13)
> 
> * Update balena-io/balena-cli to v22.5.3 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev42
## (2025-11-13)


<details>
<summary> Update balena-yocto-scripts to 888ffe70e5bbca3386b502c075de3b25ea8c226c [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.80
> ### (2025-11-13)
> 
> * balena-build: Fix typo [Atanas Bunchev]
> 
> ## balena-yocto-scripts-1.38.79
> ### (2025-11-13)
> 
> * Update balena-io/balena-cli to v22.5.0 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.78
> ### (2025-11-13)
> 
> * Update aws/aws-cli to v2.31.35 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.77
> ### (2025-11-12)
> 
> * Update balena-io/balena-cli to v22.4.17 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev41
## (2025-11-12)


<details>
<summary> Update balena-yocto-scripts to 052ceda565407997d0e1f8b4addee1ca657ccd4a [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.76
> ### (2025-11-11)
> 
> * Update aws/aws-cli to v2.31.34 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.75
> ### (2025-11-07)
> 
> * Update aws/aws-cli to v2.31.32 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev40
## (2025-11-07)


<details>
<summary> Update balena-yocto-scripts to 59b2fdf6877cab30725bf57e04c307648a1bcb20 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.74
> ### (2025-11-06)
> 
> * Update aws/aws-cli to v2.31.31 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev39
## (2025-11-04)


<details>
<summary> Update balena-yocto-scripts to 399199715d579cdb47cfcb7f0cc50d7515704907 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.73
> ### (2025-11-04)
> 
> * Update balena-io-examples/setup-balena-action action to v0.0.53 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev38
## (2025-11-04)


<details>
<summary> Update balena-yocto-scripts to 4bfd7ee039abb7de7e42976de482e572e3297787 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.72
> ### (2025-11-03)
> 
> * Update aws/aws-cli to v2.31.28 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev37
## (2025-11-01)


<details>
<summary> Update balena-yocto-scripts to 1184d75bd1a0e77591f2f2d87af755e5d035f7a6 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.71
> ### (2025-11-01)
> 
> * Update Pin actions/download-artifact action to 018cc2c [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.70
> ### (2025-11-01)
> 
> * Update aws/aws-cli to v2.31.27 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev36
## (2025-10-31)


<details>
<summary> Update balena-yocto-scripts to 03ec60707e750f75c7e16d94b86b9e10468cd340 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.69
> ### (2025-11-01)
> 
> * Switch back to official actions/download-artifact action @ v6.0.0 [Kyle Harding]
> 

</details>

# v6.5.53+rev35
## (2025-10-31)


<details>
<summary> Update balena-yocto-scripts to a2d744e2c9766a60b88e4446e61b68286a625ad8 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.68
> ### (Invalid date)
> 
> * Update aws/aws-cli to v2.31.26 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.67
> ### (Invalid date)
> 
> * Update balena-io/balena-cli to v22.4.16 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.66
> ### (2025-10-29)
> 
> * Update aws/aws-cli to v2.31.25 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.65
> ### (2025-10-29)
> 
> * Update aws/aws-cli to v2.31.24 [balena-renovate[bot]]
> 

</details>


<details>
<summary> Update balena-yocto-scripts to 157ae82bf37b6258655a9a3a30c2bfee884cbb72 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.68
> ### (Invalid date)
> 
> * Update aws/aws-cli to v2.31.26 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.67
> ### (Invalid date)
> 
> * Update balena-io/balena-cli to v22.4.16 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.66
> ### (2025-10-29)
> 
> * Update aws/aws-cli to v2.31.25 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.65
> ### (2025-10-29)
> 
> * Update aws/aws-cli to v2.31.24 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev34
## (2025-10-25)


<details>
<summary> Update balena-yocto-scripts to aa7f0cab380e7f58c861ecfb135b379e62da3afa [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.63
> ### (2025-10-25)
> 
> * Update aws/aws-cli to v2.31.22 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.62
> ### (2025-10-25)
> 
> * Update balena-io-examples/setup-balena-action action to v0.0.52 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev33
## (2025-10-25)


<details>
<summary> Update balena-yocto-scripts to d568fafb891046a37b835faa82f2e5a89308eebe [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.61
> ### (2025-10-25)
> 
> * Update actions/upload-artifact action to v5 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.60
> ### (2025-10-23)
> 
> * Update aws/aws-cli to v2.31.21 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.59
> ### (2025-10-23)
> 
> * Update aws/aws-cli to v2.31.20 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.58
> ### (2025-10-23)
> 
> * Update balena-io/balena-cli to v22.4.15 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.57
> ### (2025-10-23)
> 
> * Check test_matrix is non-null before transforming as JSON [Kyle Harding]
> 
> ## balena-yocto-scripts-1.38.56
> ### (2025-10-21)
> 
> * Update aws/aws-cli to v2.31.19 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.55
> ### (2025-10-21)
> 
> * Update aws/aws-cli to v2.31.18 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.54
> ### (2025-10-20)
> 
> * Update acceptable states for previous test runs [Kyle Harding]
> * Fix AMI decrypt step paths [Kyle Harding]
> 
> ## balena-yocto-scripts-1.38.53
> ### (2025-10-18)
> 
> * Update balena-io-examples/setup-balena-action action to v0.0.51 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.52
> ### (2025-10-17)
> 
> * Update balena-io/balena-cli to v22.4.14 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.51
> ### (2025-10-16)
> 
> * Update aws/aws-cli to v2.31.17 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.50
> ### (2025-10-15)
> 
> * Update aws/aws-cli to v2.31.16 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.49
> ### (2025-10-15)
> 
> * Update balena-io/balena-cli to v22.4.13 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.48
> ### (2025-10-14)
> 
> * Update aws/aws-cli to v2.31.15 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.47
> ### (2025-10-13)
> 
> * Update aws/aws-cli to v2.31.14 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev32
## (2025-10-11)


<details>
<summary> Update balena-yocto-scripts to 4984392b01b955e6ff75a616941f36e0fc5fb511 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.46
> ### (2025-10-11)
> 
> * Update balena-io-examples/setup-balena-action action to v0.0.48 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.45
> ### (2025-10-11)
> 
> * Update aws/aws-cli to v2.31.13 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev31
## (2025-10-11)


<details>
<summary> Update balena-yocto-scripts to 5025a39fadf2c4f71561512b0b0d9b415958f389 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.44
> ### (2025-10-10)
> 
> * Update balena-io/balena-cli to v22.4.11 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev30
## (2025-10-09)


<details>
<summary> Update balena-yocto-scripts to 17636b4b32662e606d1670f94b4e869e026499d2 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.43
> ### (2025-10-09)
> 
> * Update balena-io/balena-cli to v22.4.10 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev29
## (2025-10-09)


<details>
<summary> Update balena-yocto-scripts to 42a3124eae2ff7cb313e48163fa5f9dafbf74348 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.42
> ### (2025-10-08)
> 
> * Update aws/aws-cli to v2.31.11 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev28
## (2025-10-08)


<details>
<summary> Update balena-yocto-scripts to 558629f7ee193dfa3a920376f095410df9241a0c [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.41
> ### (2025-10-08)
> 
> * Update GitHub Actions [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev27
## (2025-10-08)


<details>
<summary> Update balena-yocto-scripts to 48aa3346df05d6c758c666d2102f82b3c6ed80cb [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.40
> ### (2025-10-08)
> 
> * Update balena-io/balena-cli to v22.4.9 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev26
## (2025-10-08)


<details>
<summary> Update balena-yocto-scripts to 16f03f3c8e852f820826503f93202b398df1edbf [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.39
> ### (2025-10-08)
> 
> * Update balena-io-examples/setup-balena-action action to v0.0.46 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.38
> ### (2025-10-07)
> 
> * Update aws/aws-cli to v2.31.10 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.37
> ### (2025-10-07)
> 
> * Update aws/aws-cli to v2.30.7 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.36
> ### (2025-10-07)
> 
> * Fix check for present test matrix when checking test results [Ryan Cooke]
> 

</details>

# v6.5.53+rev25
## (2025-10-07)

* workflows: stop get_inputs job running on both PR and PRT triggers [Ryan Cooke]

# v6.5.53+rev24
## (2025-09-25)


<details>
<summary> Update balena-yocto-scripts to 4802bd82ff77b1ed887563e676e8ed32f6f2304d [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.35
> ### (2025-09-25)
> 
> * Update balena-io/balena-cli to v22.4.8 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.34
> ### (2025-09-22)
> 
> * Update balena-io/balena-cli to v22.4.7 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev23
## (2025-09-22)

* workflows: Add workflow call trigger [Ryan Cooke]

# v6.5.53+rev22
## (2025-09-18)


<details>
<summary> Update balena-yocto-scripts to 02be3b22435fe6eea86ee6b4ed8d837d980d732b [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.33
> ### (2025-09-18)
> 
> * Update balena-io/balena-cli to v22.4.6 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.32
> ### (2025-09-18)
> 
> * Update balena-io-examples/setup-balena-action action to v0.0.42 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev21
## (2025-09-17)


<details>
<summary> Update balena-yocto-scripts to 59b3f3e5df5480fc2f26b93482af390f3f7dee8c [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.31
> ### (2025-09-17)
> 
> * Update balena-io/balena-cli to v22.4.5 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.30
> ### (2025-09-16)
> 
> * Update aws/aws-cli to v2.30.3 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.29
> ### (2025-09-16)
> 
> * Update balena-io/balena-cli to v22.4.4 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev20
## (2025-09-16)


<details>
<summary> Update balena-yocto-scripts to 50d863b5a9a2fab1ba48546a113cedb541422116 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.28
> ### (2025-09-16)
> 
> * Update aws/aws-cli to v2.30.2 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.27
> ### (2025-09-15)
> 
> * Update balena-io-examples/setup-balena-action action to v0.0.40 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.26
> ### (2025-09-13)
> 
> * Update aws/aws-cli to v2.30.1 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev19
## (2025-09-13)


<details>
<summary> Update balena-yocto-scripts to d094a6bb64db28f2261caa833f9d469d1102a520 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.25
> ### (2025-09-13)
> 
> * Update actions/create-github-app-token action to v2.1.4 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev18
## (2025-09-13)


<details>
<summary> Update balena-yocto-scripts to ae496c0b4b97a3f6a19b88b8d93f7c5ba176fc33 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.24
> ### (2025-09-12)
> 
> * Update GitHub Actions [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev17
## (2025-09-12)


<details>
<summary> Update balena-yocto-scripts to d13b10b485deddf5c63267fccfbee881363af6eb [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.23
> ### (2025-09-11)
> 
> * Update aws/aws-cli to v2.30.0 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev16
## (2025-09-11)


<details>
<summary> Update balena-yocto-scripts to fcf64ffbb43f40b397b6ff6c03522ff2787f2f6d [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.22
> ### (2025-09-11)
> 
> * Update aws/aws-cli to v2.29.1 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.21
> ### (2025-09-10)
> 
> * Update balena-io/balena-cli to v22.4.3 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev15
## (2025-09-09)


<details>
<summary> Update balena-yocto-scripts to 091a11a3e305f7c91f9e0feb4f6d9068c8f782c8 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.20
> ### (2025-09-08)
> 
> * Update aws/aws-cli to v2.28.26 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev14
## (2025-09-08)


<details>
<summary> Update balena-yocto-scripts to 99fda7aeef94ebc3dbb66a9a0920002d5003dc8e [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.19
> ### (2025-09-08)
> 
> * Update Lock file maintenance [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev13
## (2025-09-05)


<details>
<summary> Update balena-yocto-scripts to 1976a83a9759d0d234d600426a079a22b4d063d6 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.18
> ### (2025-09-04)
> 
> * Update aws/aws-cli to v2.28.24 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev12
## (2025-09-04)


<details>
<summary> Update balena-yocto-scripts to b1c36acfd089516c641261096cf432438fecbaf1 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.17
> ### (2025-09-04)
> 
> * Update actions/github-script action to v8 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.16
> ### (2025-09-04)
> 
> * Update aws/aws-cli to v2.28.23 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.15
> ### (2025-09-04)
> 
> * Update balena-io-examples/setup-balena-action action to v0.0.37 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev11
## (2025-09-04)


<details>
<summary> Update balena-yocto-scripts to d240726b898573a97cdd8318f212e3ec8fffdb66 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.14
> ### (2025-09-03)
> 
> * Update aws-actions/configure-aws-credentials action to v5 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev10
## (2025-09-03)


<details>
<summary> Update balena-yocto-scripts to e85b04f2aad7a2e66edd05ce4b6b20aa05f16d26 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.13
> ### (2025-09-03)
> 
> * Update balena-io/balena-cli to v22.4.1 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.12
> ### (2025-09-02)
> 
> * Update aws/aws-cli to v2.28.22 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.11
> ### (2025-09-02)
> 
> * Update balena-io-examples/setup-balena-action action to v0.0.35 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev9
## (2025-08-30)


<details>
<summary> Update balena-yocto-scripts to 3da4e935f3d621e6df55f0499fd6a8fe0af6cdbf [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.10
> ### (Invalid date)
> 
> * Update balena-io/balena-cli to v22.3.0 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev8
## (2025-08-30)


<details>
<summary> Update balena-yocto-scripts to 6ea44a858d9c813208f522af8475cd199448df58 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.9
> ### (Invalid date)
> 
> * Update balena-io/upload-balena-release-asset action to v0.1.5 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.8
> ### (Invalid date)
> 
> * Update balena-io-examples/setup-balena-action action to v0.0.31 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev7
## (2025-08-30)


<details>
<summary> Update balena-yocto-scripts to 4084cb02ad5efd5335f0322bd3e3a29642e353e5 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.7
> ### (2025-08-29)
> 
> * Update aws/aws-cli to v2.28.21 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.6
> ### (2025-08-26)
> 
> * Update aws/aws-cli to v2.28.18 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev6
## (2025-08-25)


<details>
<summary> Update balena-yocto-scripts to 9750eaaa4239081b6231a24d7df7e8e3c07da8cf [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.5
> ### (2025-08-25)
> 
> * Update Lock file maintenance [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev5
## (2025-08-23)


<details>
<summary> Update balena-yocto-scripts to db2ff5e0c3c5fa09ea62a166365ea1fe9e946c7a [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.4
> ### (2025-08-22)
> 
> * Update aws/aws-cli to v2.28.16 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev4
## (2025-08-20)


<details>
<summary> Update contracts to fc76558c384c10bf228b10909eca346ee9d6b564 [balena-renovate[bot]] </summary>

> ## contracts-2.0.137
> ### (2025-07-02)
> 
> * hw.device-type: Update J4012 device type name [Alexandru]
> 
> ## contracts-2.0.136
> ### (2025-05-14)
> 
> * patch: Add deprecation notice for balenalib base images [Vipul Gupta (@vipulgupta2048)]
> 
> ## contracts-2.0.135
> ### (2025-05-14)
> 
> * patch: Add deprecation notice to balenalib readme [Vipul Gupta (@vipulgupta2048)]
> 
> ## contracts-2.0.134
> ### (2025-05-07)
> 
> * Remove Ubuntu Lunar 23.04 leftovers from dotnet & python contracts [Thodoris Greasidis]
> 
> ## contracts-2.0.133
> ### (2025-05-07)
> 
> * Remove Ubuntu Xenial from supported distros [Kyle Harding]
> * Remove Ubuntu Bionic from supported distros [Kyle Harding]
> * Remove Ubuntu Focal from supported distros [Kyle Harding]
> 
> ## contracts-2.0.132
> ### (Invalid date)
> 
> * imx6ul-var-dart: Update provisioning instructions [Alexandru]
> 
> ## contracts-2.0.131
> ### (2025-04-03)
> 
> * Add EDATEC Sensing contract and logo [RayX123456]
> 
> ## contracts-2.0.130
> ### (2025-03-28)
> 
> * hw.device-type: Update links to docs for UEFI version checking [Alexandru Costache]
> 
> ## contracts-2.0.129
> ### (2025-03-14)
> 
> * Mark Bookworm as the default version for Debian [Thodoris Greasidis]
> 
> ## contracts-2.0.128
> ### (2025-02-05)
> 
> * Improve testing of contracts [Felipe Lalanne]
> * Remove unused sw.os-image contracts [Felipe Lalanne]
> 
> ## contracts-2.0.127
> ### (2025-01-28)
> 
> * Mark alpine 3.21 as the default alpine version [Thodoris Greasidis]
> 
> ## contracts-2.0.126
> ### (2025-01-28)
> 
> * Add alpine 3.21 [Felipe Lalanne]
> 
> ## contracts-2.0.125
> ### (2025-01-15)
> 
> * hw.device-type: Switch to using markdown for links [Alexandru Costache]
> 
> ## contracts-2.0.124
> ### (2025-01-07)
> 
> * sw.os+hw.device-type: Add Forecr DSB Orin Nano 8GB and Orin NX 16GB distro tpl files [Alexandru Costache]
> * forecr-dsb-ornx-lan-orin-nx-16gb: Add new public device type [Alexandru Costache]
> 
> ## contracts-2.0.123
> ### (2025-01-02)
> 
> * Forecr DSB ORNX: Update device name [Alexandru]
> 
> ## contracts-2.0.122
> ### (2024-12-23)
> 
> * hw.device-type: add Forecr DSB ORNX entries [Alex Suykov]
> 
> ## contracts-2.0.121
> ### (2024-12-18)
> 
> * hw.device-type: Fix compatibility with existing sdk structure [Alexandru Costache]
> 
> ## contracts-2.0.120
> ### (2024-12-18)
> 
> * add eg5120-imx8mp contract [Ryan Cooke]
> 
> ## contracts-2.0.119
> ### (2024-12-16)
> 
> * contracts/hw.device-type: Update instructions for Orin flasher types [Alexandru Costache]
> 
> ## contracts-2.0.118
> ### (2024-12-04)
> 
> * hw.device-type: update logo for nitrogen8M Mini [Jonathan Berger]
> 
> ## contracts-2.0.117
> ### (2024-11-25)
> 
> * hw.device-type: Rename Seeed J3010 and J4012 to include module name [Alexandru Costache]
> 
> ## contracts-2.0.116
> ### (2024-10-17)
> 
> * Add alpine 3.20 [Otavio Jacobi]
> 
> ## contracts-2.0.115
> ### (2024-10-17)
> 
> * Add alpine 3.19 [Otavio Jacobi]
> 
> ## contracts-2.0.114
> ### (2024-10-09)
> 
> * sw.os+hw.device-type: Update all Orin devices to r36.3 in sources.list [Alexandru Costache]
> * hw.device-type: Remove superfluous instructions for beagleplay [Alexandru]
> 

</details>

# v6.5.53+rev3
## (2025-08-20)


<details>
<summary> Update balena-yocto-scripts to fc8c535752ed62f8c141dc792b17bffe305b5386 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.3
> ### (2025-08-20)
> 
> * Update aws/aws-cli to v2.28.13 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev2
## (2025-08-19)


<details>
<summary> Update balena-yocto-scripts to d2b30dabd4df9ded5a2d0f4250a09e2516eda209 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.2
> ### (2025-08-19)
> 
> * Update actions/checkout action to v5 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.38.1
> ### (2025-08-18)
> 
> * Update balena-io/balena-cli to v22.2.4 [balena-renovate[bot]]
> 

</details>

# v6.5.53+rev1
## (2025-08-18)


<details>
<summary> Update balena-yocto-scripts to 8621547e6855b99d63471cb66fce8cc943f64553 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.38.0
> ### (2025-08-18)
> 
> * Split testing artifacts into individual files [Kyle Harding]
> 
> ## balena-yocto-scripts-1.37.20
> ### (2025-08-18)
> 
> * barys: default to highest priority layers for template paths [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.37.19
> ### (2025-08-15)
> 
> * Update aws/aws-cli to v2.28.10 [balena-renovate[bot]]
> 

</details>

# v6.5.53
## (2025-08-18)

* layers/meta-balena: Update to v6.5.53 [Alexandru Costache]
* balena-yocto-scripts: Bump to v1.37.18 [Alexandru Costache]

# v6.0.41+rev5
## (2025-07-09)

* Generate SBOM and VEX (cycloneDX) [Edwin Joassart]

# v6.0.41+rev4
## (2024-11-11)


<details>
<summary> Update balena-yocto-scripts to e5a831d9b3f8d324c6ad57974f3ddc001ea0927c [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.27.9
> ### (2024-11-11)
> 
> * Update Lock file maintenance [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.27.8
> ### (2024-11-04)
> 
> * Update product-os/review-commit-action action to v0.1.7 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.27.7
> ### (2024-11-04)
> 
> * Update Pin product-os/review-commit-action action to 81db18c [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.27.6
> ### (2024-11-04)
> 
> * Use official aws cli binaries and commands [Kyle Harding]
> 
> ## balena-yocto-scripts-1.27.5
> ### (2024-11-04)
> 
> * Update Lock file maintenance [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.27.4
> ### (2024-11-01)
> 
> * Update actions/checkout action to v4.2.2 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.27.3
> ### (2024-10-29)
> 
> * Add pull request write permissions for workflow approvals [Kyle Harding]
> 
> ## balena-yocto-scripts-1.27.2
> ### (2024-10-23)
> 
> * Update Lock file maintenance [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.27.1
> ### (2024-10-23)
> 
> * remove CLI check if not deploying [rcooke-warwick]
> 
> ## balena-yocto-scripts-1.27.0
> ### (2024-10-23)
> 
> * add review-commit-action to wait for approvals on PRT events [Ryan Cooke]
> 
> ## balena-yocto-scripts-1.26.0
> ### (2024-10-15)
> 
> * Expose secure boot testing features via matrix input [Kyle Harding]
> 
> ## balena-yocto-scripts-1.25.63
> ### (2024-10-11)
> 
> * Update balena-os/leviathan action to v2.31.60 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.25.62
> ### (2024-10-11)
> 
> * Fix concurrency and cancel in progress contexts [Kyle Harding]
> 
> ## balena-yocto-scripts-1.25.61
> ### (2024-10-10)
> 
> * Update balena-os/leviathan action to v2.31.59 [balena-renovate[bot]]
> 

</details>

# v6.0.41+rev3
## (2024-11-11)

* Update balena-os/balena-yocto-scripts to v1.27.9 [balena-renovate[bot]]

# v6.0.41+rev2
## (2024-10-11)

* Update layers/poky to c8f1b3762d0bc3c8296cbb45660d1016161f2ab6 [balena-renovate[bot]]

# v6.0.41+rev1
## (2024-10-10)


<details>
<summary> Update balena-yocto-scripts to c7cd7caf5df89090152aee8462dcc82287f70537 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.25.60
> ### (2024-10-09)
> 
> * Update actions/upload-artifact action to v4.4.3 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.25.59
> ### (2024-10-09)
> 
> * Update actions/upload-artifact action to v4.4.2 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.25.58
> ### (2024-10-09)
> 
> * Update balena-os/leviathan action to v2.31.56 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.25.57
> ### (2024-10-08)
> 
> * Update balena-os/leviathan action to v2.31.54 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.25.56
> ### (2024-10-07)
> 
> * Update actions/upload-artifact action to v4.4.1 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.25.55
> ### (2024-10-07)
> 
> * Update balena-os/leviathan action to v2.31.51 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.25.54
> ### (2024-10-07)
> 
> * Update actions/checkout action to v4.2.1 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.25.53
> ### (2024-10-07)
> 
> * fix balena deploy quotes [Ryan Cooke]
> 
> ## balena-yocto-scripts-1.25.52
> ### (2024-10-07)
> 
> * Update Lock file maintenance [balena-renovate[bot]]
> 

</details>

# v6.0.41
## (2024-10-09)


<details>
<summary> Update layers/meta-balena to 1fcd66fe37f5d683c57d9187f3f819f139ff1baf [balena-renovate[bot]] </summary>

> ## meta-balena-6.0.41
> ### (2024-10-09)
> 
> * Update balena-os/balena-yocto-scripts action to v1.25.59 [balena-renovate[bot]]
> 
> ## meta-balena-6.0.40
> ### (2024-10-08)
> 
> * os-helpers-efi: silence secure boot variable checks [Joseph Kogut]
> * os-helpers-efi: silence od stderr [Joseph Kogut]
> 
> ## meta-balena-6.0.39
> ### (2024-10-07)
> 
> * tests: hup: login with sdk before fetching image [Ryan Cooke]
> 
> ## meta-balena-6.0.38
> ### (2024-10-04)
> 
> * tpm2: ensure auth session contexts are flushed after use [Joseph Kogut]
> 
> ## meta-balena-6.0.37
> ### (2024-10-04)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 3a1a989 [balena-renovate[bot]] </summary>
> 
>> ### leviathan-2.31.50
>> #### (2024-10-04)
>> 
>> * Update ubuntu to v24 [balena-renovate[bot]]
>> 
>> ### leviathan-2.31.49
>> #### (2024-10-04)
>> 
>> * Update docker/setup-buildx-action digest to c47758b [balena-renovate[bot]]
>> 
>> ### leviathan-2.31.48
>> #### (2024-10-03)
>> 
>> * Update balena-io/balena-cli to v19.0.13 [balena-renovate[bot]]
>> 
>> ### leviathan-2.31.47
>> #### (2024-10-03)
>> 
>> * Update docker/setup-buildx-action digest to 8026d2b [balena-renovate[bot]]
>> 
>> ### leviathan-2.31.46
>> #### (2024-10-03)
>> 
>> * Update core/contracts digest to 1fb0b0c [balena-renovate[bot]]
>> 
>> ### leviathan-2.31.45
>> #### (2024-10-03)
>> 
>> * add .git to dockerignore [rcooke-warwick]
>> * remove pull request target trigger from workflows [rcooke-warwick]
>> 
> 
> </details>
> 
> 
> ## meta-balena-6.0.36
> ### (2024-10-01)
> 
> * Update balena-os/balena-yocto-scripts action to v1.25.49 [balena-renovate[bot]]
> 
> ## meta-balena-6.0.35
> ### (Invalid date)
> 
> * tests: cloud: prevent hanging in cloud suite teardown [rcooke-warwick]
> 
> ## meta-balena-6.0.34
> ### (2024-09-27)
> 
> * CI: Update checkout settings [Pagan Gazzard]
> 

</details>

# v6.0.33+rev5
## (2024-10-05)

* Update layers/meta-openembedded to dd3d2293ffdf2559f8a433f241765a8ab50cd085 [balena-renovate[bot]]

# v6.0.33+rev4
## (2024-10-05)

* Update balena-os/balena-yocto-scripts to [balena-renovate[bot]]

# v6.0.33+rev3
## (2024-10-04)


<details>
<summary> Update balena-yocto-scripts to 8385185bfcb1959d75a7858aafc827982ca09825 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.25.51
> ### (2024-10-04)
> 
> * Update balena-os/leviathan action to v2.31.50 [balena-renovate[bot]]
> 

</details>

# v6.0.33+rev2
## (2024-10-03)


<details>
<summary> Update balena-yocto-scripts to 654f5cf71ee54748cf217e1e1ab56c510143f3fc [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.25.50
> ### (2024-10-02)
> 
> * use github app installation token for device repository cloning [Ryan Cooke]
> 
> ## balena-yocto-scripts-1.25.49
> ### (2024-10-01)
> 
> * Only attempt to decrypt if we have encrypted in the build step [Ryan Cooke]
> * Fetch full depth in order to checkout custom meta-balena-refs [Kyle Harding]
> * Encrypt balenaOS artifacts at rest in GitHub [Anton Belodedenko]
> 
> ## balena-yocto-scripts-1.25.48
> ### (2024-10-01)
> 
> * Update actions/checkout action to v4.2.0 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.25.47
> ### (Invalid date)
> 
> * patch: Stop persisting credentials in actions/checkout [Vipul Gupta (@vipulgupta2048)]
> 
> ## balena-yocto-scripts-1.25.46
> ### (2024-09-27)
> 
> * use genericx86-64-ext image for testing the workflow [rcooke-warwick]
> 

</details>

# v6.0.33+rev1
## (2024-10-03)

* Add GHA Built Test Deploy workflows [rcooke-warwick]

# v6.0.33
## (2024-09-23)


<details>
<summary> Update layers/meta-balena to f2c72d6bbd312821f0bb97897fe7836c525950f7 [balena-renovate[bot]] </summary>

> ## meta-balena-6.0.33
> ### (2024-09-22)
> 
> * Override the default commit body for digest updates [Kyle Harding]
> 

</details>

# v6.0.32+rev1
## (2024-09-22)

* Update layers/meta-bsp-imx8mp to 649a638ee1fbfeef62358bdd7bfaf7f6aa72ccbc [balena-renovate[bot]]

# v6.0.32
## (2024-09-22)


<details>
<summary> Update layers/meta-balena to 8786d755f72c35fb3b332c26b32c3de576d3d0ce [balena-renovate[bot]] </summary>

> ## meta-balena-6.0.32
> ### (2024-09-21)
> 
> * kernel-headers-test: update dockerfile to bullseye [Alex Gonzalez]
> 

</details>

# v6.0.31+rev2
## (2024-09-22)

* Update layers/meta-bsp-imx8mp to 0b37ccfd6af60364df3d0251bfbcfd92a6868af6 [balena-renovate[bot]]

# v6.0.31+rev1
## (2024-09-21)


<details>
<summary> Update balena-yocto-scripts to 0899d814aa7f25d48825ac701c61e066f7b0c4f5 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.25.45
> ### (2024-09-19)
> 
> * fix check of finalize value [rcooke-warwick]
> * Improve checking of previous test results [Kyle Harding]
> 

</details>

# v6.0.31
## (2024-09-21)


<details>
<summary> Update layers/meta-balena to b3ab5311c0ad999dc896ab5b9a85e48098ddd3dc [balena-renovate[bot]] </summary>

> ## meta-balena-6.0.31
> ### (2024-09-20)
> 
> * mkfs-hostapp-native: update Dockerfile to using trixie [Alex Gonzalez]
> * meta-balena-rust: rust-llvm: backport a fix for build with gcc-13 [Alex Gonzalez]
> 
> ## meta-balena-6.0.30
> ### (2024-09-18)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 17c522f [balena-renovate[bot]] </summary>
> 
>> ### leviathan-2.31.44
>> #### (2024-09-18)
>> 
>> * Update balena-io/balena-cli to v19.0.11 [balena-renovate[bot]]
>> 
> 
> </details>
> 
> 
> ## meta-balena-6.0.29
> ### (2024-09-18)
> 
> * modemmanager: Fix SIM7100E crash [Florin Sarbu]
> 
> ## meta-balena-6.0.28
> ### (2024-09-18)
> 
> * initrdscripts: replace cut by awk for parsing lsblk in cryptsetup hook [Michal Toman]
> 
> ## meta-balena-6.0.27
> ### (2024-09-17)
> 
> * tests:os: Use writeConfigJsonProp helper function [Kyle Harding]
> 
> ## meta-balena-6.0.26
> ### (2024-09-16)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 384eab3 [balena-renovate[bot]] </summary>
> 
>> ### leviathan-2.31.43
>> #### (2024-09-16)
>> 
>> * Update balena-os/leviathan-worker to v2.9.47 [balena-renovate[bot]]
>> 
>> ### leviathan-2.31.42
>> #### (2024-09-16)
>> 
>> * Update balena-os/leviathan-worker to v2.9.46 [balena-renovate[bot]]
>> 
>> ### leviathan-2.31.41
>> #### (2024-09-13)
>> 
>> * Update balena-io/balena-cli to v19.0.10 [balena-renovate[bot]]
>> 
>> ### leviathan-2.31.40
>> #### (2024-09-12)
>> 
>> * Update balena-io/balena-cli to v19.0.9 [balena-renovate[bot]]
>> 
>> ### leviathan-2.31.39
>> #### (2024-09-12)
>> 
>> * Update balena-io/balena-cli to v19.0.8 [balena-renovate[bot]]
>> 
>> ### leviathan-2.31.38
>> #### (2024-09-12)
>> 
>> * Update balena-io/balena-cli to v19.0.7 [balena-renovate[bot]]
>> 
>> ### leviathan-2.31.37
>> #### (2024-09-12)
>> 
>> * Update balena-os/leviathan-worker to v2.9.45 [balena-renovate[bot]]
>> 
>> ### leviathan-2.31.36
>> #### (2024-09-11)
>> 
>> * Update balena-os/leviathan-worker to v2.9.44 [balena-renovate[bot]]
>> 
>> ### leviathan-2.31.35
>> #### (2024-09-10)
>> 
>> * Update balena-io/balena-cli to v19.0.5 [balena-renovate[bot]]
>> 
>> ### leviathan-2.31.34
>> #### (2024-09-05)
>> 
>> * Always upload reports, especially when tests fail [Kyle Harding]
>> 
>> ### leviathan-2.31.33
>> #### (2024-09-05)
>> 
>> * Update balena-io/balena-cli to v19.0.3 [balena-renovate[bot]]
>> 
>> ### leviathan-2.31.32
>> #### (2024-09-03)
>> 
>> * Update balena-io/balena-cli to v19.0.2 [balena-renovate[bot]]
>> 
>> ### leviathan-2.31.31
>> #### (2024-09-02)
>> 
>> * Update actions/upload-artifact digest to 5076954 [balena-renovate[bot]]
>> 
>> ### leviathan-2.31.30
>> #### (2024-09-02)
>> 
>> * Update balena-io/balena-cli to v19.0.1 [balena-renovate[bot]]
>> 
> 
> </details>
> 
> 
> ## meta-balena-6.0.25
> ### (2024-09-13)
> 
> * initrdscripts: Make cryptsetup fail hard in unexpected conditions [Michal Toman]
> 
> ## meta-balena-6.0.24
> ### (2024-09-13)
> 
> * common: fix return in commit_apply-dbx HUP hook [Joseph Kogut]
> 
> ## meta-balena-6.0.23
> ### (2024-09-12)
> 
> * tests:os: Avoid setting apiEndpoint for unmanaged tests [Kyle Harding]
> 

</details>

# v6.0.22+rev5
## (2024-09-19)


<details>
<summary> Update balena-yocto-scripts to 659a7ebd075bb77fb46422d377a68458acbc646d [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.25.44
> ### (2024-09-18)
> 
> * Update balena-os/leviathan action to v2.31.44 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.25.43
> ### (2024-09-18)
> 
> * Update balena-os/leviathan action to v2.31.43 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.25.42
> ### (2024-09-18)
> 
> * only upload artifacts when test_matrix is defined [rcooke-warwick]
> 
> ## balena-yocto-scripts-1.25.41
> ### (2024-09-12)
> 
> * Update balena-os/leviathan action to v2.31.40 [balena-renovate[bot]]
> 

</details>

# v6.0.22+rev4
## (2024-09-18)

* Update layers/meta-bsp-imx8mp to 02f9268447375daed75e5f383083ac6749afbb1e [balena-renovate[bot]]

# v6.0.22+rev3
## (2024-09-13)

* Update layers/meta-bsp-imx8mp to 18fcd4e934beb73edfcdcd1f96c5f976f7a371b0 [balena-renovate[bot]]

# v6.0.22+rev2
## (2024-09-12)

* Update layers/meta-bsp-imx8mp to d909dcae04a2f078781d6400336df49126f060db [balena-renovate[bot]]

# v6.0.22+rev1
## (2024-09-12)


<details>
<summary> Update balena-yocto-scripts to 4bc14c6b105fd26f5cad219f2cf4c324e8be038c [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.25.40
> ### (2024-09-12)
> 
> * Update balena-os/leviathan action to v2.31.37 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.25.39
> ### (2024-09-11)
> 
> * Update actions/create-github-app-token action to v1.11.0 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.25.38
> ### (2024-09-09)
> 
> * Include semver when bumping leviathan action [Kyle Harding]
> 
> ## balena-yocto-scripts-1.25.37
> ### (2024-09-05)
> 
> * Update balena-os/leviathan digest to 8fb47f2 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.25.36
> ### (2024-09-05)
> 
> * Update balena-os/leviathan digest to 5db2b5d [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.25.35
> ### (2024-09-04)
> 
> * Update balena-os/leviathan digest to da52396 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.25.34
> ### (2024-09-04)
> 
> * Update actions/create-github-app-token action to v1.10.4 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.25.33
> ### (2024-09-02)
> 
> * Update balena-os/leviathan digest to d8572e2 [balena-renovate[bot]]
> 

</details>

# v6.0.22
## (2024-09-12)


<details>
<summary> Update layers/meta-balena to c210599ad8e55675a29fe24800b7046eb260f397 [balena-renovate[bot]] </summary>

> ## meta-balena-6.0.22
> ### (2024-09-12)
> 
> * Update balena-os/balena-yocto-scripts action to v1.25.39 [balena-renovate[bot]]
> 

</details>

# v6.0.21
## (2024-09-02)


<details>
<summary> Update layers/meta-balena to 5310f76b1f409f6fc164ab3f307b381250ff8f5a [balena-renovate[bot]] </summary>

> ## meta-balena-6.0.21
> ### (2024-09-01)
> 
> * Update balena-os/balena-yocto-scripts action to v1.25.30 [balena-renovate[bot]]
> 
> ## meta-balena-6.0.20
> ### (2024-09-01)
> 
> * tests: config: restore both network options to false [Kyle Harding]
> 

</details>

# v6.0.19+rev5
## (2024-09-02)

* Update layers/meta-bsp-imx8mp to 281a0ac36f7e8c51c2229dbc13f3bf32e7a25ca9 [balena-renovate[bot]]

# v6.0.19+rev4
## (2024-09-02)


<details>
<summary> Update balena-yocto-scripts to 11f6becf05ead40e926a52022b9fca763b49eebe [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.25.32
> ### (2024-09-02)
> 
> * Update Lock file maintenance [balena-renovate[bot]]
> 

</details>

# v6.0.19+rev3
## (2024-09-02)


<details>
<summary> Update balena-yocto-scripts to 578161cba337cccf1a23a2b4b8a5f45cbb16abb2 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.25.31
> ### (2024-09-01)
> 
> * Update actions/upload-artifact action to v4.4.0 [balena-renovate[bot]]
> 
> ## balena-yocto-scripts-1.25.30
> ### (2024-09-01)
> 
> * Update balena-os/leviathan digest to ff6a079 [balena-renovate[bot]]
> 

</details>

# v6.0.19+rev2
## (2024-09-01)


<details>
<summary> Update balena-yocto-scripts to cc1d2e4eec194181974a018588d154c41d7cd040 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.25.29
> ### (2024-09-01)
> 
> * Restrict runners via yocto label, not 16cpu [Kyle Harding]
> 

</details>

# v6.0.19+rev1
## (2024-08-31)


<details>
<summary> Update balena-yocto-scripts to 5c8805dcd0013ca3aab6ec82e094595ad8f6780b [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.25.28
> ### (Invalid date)
> 
> * checkout private contracts for test job [rcooke-warwick]
> 
> ## balena-yocto-scripts-1.25.27
> ### (2024-08-29)
> 
> * use apt-get to install s4cmd instead of pip [rcooke-warwick]
> 

</details>

# v6.0.19
## (2024-08-31)


<details>
<summary> Update layers/meta-balena to 782207a721f505e9e414c7a79259c407e2d6c445 [balena-renovate[bot]] </summary>

> ## meta-balena-6.0.19
> ### (2024-09-01)
> 
> 
> <details>
> <summary> Update balena-supervisor to v16.6.1 [balena-renovate[bot]] </summary>
> 
>> ### balena-supervisor-16.6.1
>> #### (2024-08-29)
>> 
>> * Remove unused patchDevice function [Felipe Lalanne]
>> 
>> ### balena-supervisor-16.6.0
>> #### (2024-08-28)
>> 
>> * Add support for redsocks dnsu2t config [Christina Ying Wang]
>> 
> 
> </details>
> 
> 
> ## meta-balena-6.0.18
> ### (2024-09-01)
> 
> * Update balena-os/balena-yocto-scripts action to v1.25.28 [balena-renovate[bot]]
> 
> ## meta-balena-6.0.17
> ### (2024-09-01)
> 
> * Update Pin balena-os/balena-yocto-scripts action to a3dfa26 [balena-renovate[bot]]
> 
> ## meta-balena-6.0.16
> ### (2024-08-29)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to ff6a079 [balena-renovate[bot]] </summary>
> 
>> ### leviathan-2.31.29
>> #### (2024-08-29)
>> 
>> * Update core/contracts digest to 59752b7 [balena-renovate[bot]]
>> 
>> ### leviathan-2.31.28
>> #### (2024-08-29)
>> 
>> * Update balena-os/leviathan-worker to v2.9.43 [balena-renovate[bot]]
>> 
>> ### leviathan-2.31.27
>> #### (2024-08-29)
>> 
>> * Update docker/setup-buildx-action digest to 988b5a0 [balena-renovate[bot]]
>> 
>> ### leviathan-2.31.26
>> #### (2024-08-29)
>> 
>> * specify ipv4 localhost for balena tunnel [rcooke-warwick]
>> * Move balena-cli download to a build stage with renovate management [Kyle Harding]
>> * core: update CLI to 19.0.0 [rcooke-warwick]
>> 
> 
> </details>
> 
> 
> ## meta-balena-6.0.15
> ### (2024-08-29)
> 
> * remove up-board and cl-som-imx8 [rcooke-warwick]
> * Add GHA workflows for additional device types [Kyle Harding]
> 

</details>

# v6.0.14
## (2024-08-28)


<details>
<summary> Update layers/meta-balena to b42b3484ad1fd0f71224d70b08d40bf8e3bef784 [balena-renovate[bot]] </summary>

> ## meta-balena-6.0.14
> ### (2024-08-28)
> 
> 
> <details>
> <summary> Update balena-supervisor to v16.5.8 [balena-renovate[bot]] </summary>
> 
>> ### balena-supervisor-16.5.8
>> #### (2024-08-27)
>> 
>> * Update webpack to v5.94.0 [SECURITY] [balena-renovate[bot]]
>> 
>> ### balena-supervisor-16.5.7
>> #### (2024-08-27)
>> 
>> * Add unit test for usingInferStepsLock [Christina Ying Wang]
>> 
>> ### balena-supervisor-16.5.6
>> #### (2024-08-23)
>> 
>> * Revert PR #2364 [Christina Ying Wang]
>> 
>> ### balena-supervisor-16.5.5
>> #### (2024-08-21)
>> 
>> * Avoid unnecessary config calls during Supervisor init [Christina Ying Wang]
>> 
>> ### balena-supervisor-16.5.4
>> #### (2024-08-16)
>> 
>> * Add kmod to runtime-base [Joseph Kogut]
>> 
>> ### balena-supervisor-16.5.3
>> #### (2024-08-08)
>> 
>> * Do not write `noProxy` to redsocks.conf [Felipe Lalanne]
>> 
>> ### balena-supervisor-16.5.2
>> #### (2024-08-07)
>> 
>> * Verify that LED_FILE exists on blinking setup [Felipe Lalanne]
>> 
>> ### balena-supervisor-16.5.1
>> #### (2024-08-05)
>> 
>> * Avoid leaking memory on deep promise recursions [Felipe Lalanne]
>> 
>> ### balena-supervisor-16.5.0
>> #### (Invalid date)
>> 
>> * Use promises for setup/writing for logging backend [Felipe Lalanne]
>> * Improve the LogBackend interface [Felipe Lalanne]
>> * Use stream pipeline instead of pipe [Felipe Lalanne]
>> * Do not use DB to store container logs info [Felipe Lalanne]
>> 
> 
> </details>
> 
> 

</details>

# v6.0.13
## (2024-08-28)


<details>
<summary> Update layers/meta-balena to f95917dab4a9e2f6b7e6830c22ba26d461fac816 [balena-renovate[bot]] </summary>

> ## meta-balena-6.0.13
> ### (2024-08-26)
> 
> * classes/image_types_balena: Add support for device specific boot filesystem options [Alexandru Costache]
> 

</details>

# v6.0.12+rev3
## (2024-08-27)


<details>
<summary> Update balena-yocto-scripts to a3dfa265480986251193a989b1077939f38c4dc3 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.25.26
> ### (2024-08-27)
> 
> * Fix if condition for checking merge commit test results [rcooke-warwick]
> 

</details>

# v6.0.12+rev2
## (2024-08-24)

* Update layers/poky to 48ef389f9151f3e8766cd2b56b245b19ded997f6 [balena-renovate[bot]]

# v6.0.12+rev1
## (2024-08-24)


<details>
<summary> Update balena-yocto-scripts to 58b4dd401dd6dd27262675b8061c7fddf5a593d4 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.25.25
> ### (2024-08-23)
> 
> * Add unique unique identifiers to summary job [Kyle Harding]
> 
> ## balena-yocto-scripts-1.25.24
> ### (2024-08-21)
> 
> * ensure "force-finalize" guarantees a finalized release [rcooke-warwick]
> * update example workflow to use "deploy-environment" input [rcooke-warwick]
> * remove "deploy-esr" input [rcooke-warwick]
> * remove "deploy-s3" input [rcooke-warwick]
> * remove "deploy-hostapp" and add "force-finalize" and "finalize-on-push-if-tests-passed" [rcooke-warwick]
> * rename "envinroment" input to "deploy-environment" for clarity [rcooke-warwick]
> * remove os-dev input [rcooke-warwick]
> 

</details>

# v6.0.12
## (2024-08-24)


<details>
<summary> Update layers/meta-balena to a8d6ff62e7ab5bc1f8b1d0a6a8d06d6da84e11af [balena-renovate[bot]] </summary>

> ## meta-balena-6.0.12
> ### (2024-08-23)
> 
> * Update balena-os/balena-yocto-scripts action to v1.25.25 [balena-renovate[bot]]
> 

</details>

# v6.0.11
## (2024-08-22)


<details>
<summary> Update layers/meta-balena to 84be7f22fd833843f48ea1d755af1c1c05c4fd4e [balena-renovate[bot]] </summary>

> ## meta-balena-6.0.11
> ### (2024-08-21)
> 
> * Update balena-os/balena-yocto-scripts action to v1.25.24 [balena-renovate[bot]]
> 

</details>

# v6.0.10+rev5
## (2024-08-20)


<details>
<summary> Update contracts to 59752b7f99c1e5576c605a2f4188f9661468319f [balena-renovate[bot]] </summary>

> ## contracts-2.0.113
> ### (2024-08-20)
> 
> * iotdin-imx8p: Update the devices contract [Valentin Raevsky]
> 

</details>

# v6.0.10+rev4
## (2024-08-19)


<details>
<summary> Update contracts to e1d59ac348642e274b442db4a41edab5c511576c [balena-renovate[bot]] </summary>

> ## contracts-2.0.112
> ### (2024-08-19)
> 
> * Add support for Ubuntu Noble [ruffsl]
> 

</details>

# v6.0.10+rev3
## (2024-08-17)

* Update layers/poky to 7db7a86fbc28eb8b7616010ee4542664ee65ef4f [balena-renovate[bot]]

# v6.0.10+rev2
## (2024-08-16)

* conf/layer: remove swig host dependency [Alexandru Costache]

# v6.0.10+rev1
## (2024-08-15)


<details>
<summary> Update balena-yocto-scripts to 87762ec55616db7a361d41ae0fb115f8a9d4e034 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.25.23
> ### (2024-08-15)
> 
> * Add mermaid flowchart to yocto workflow README [Kyle Harding]
> 

</details>

# v6.0.10
## (2024-08-14)


<details>
<summary> Update layers/meta-balena to 8fde3b3743c86febb753e38b1f809d66e41f7756 [balena-renovate[bot]] </summary>

> ## meta-balena-6.0.10
> ### (2024-08-14)
> 
> 
> <details>
> <summary> Update balena-supervisor to v16.4.6 [balena-renovate[bot]] </summary>
> 
>> ### balena-supervisor-16.4.6
>> #### (Invalid date)
>> 
>> * Update semver to v7.6.3 [Self-hosted Renovate Bot]
>> 
>> ### balena-supervisor-16.4.5
>> #### (2024-07-25)
>> 
>> * Update balena-io/deploy-to-balena-action action to v2.0.74 [Self-hosted Renovate Bot]
>> 
> 
> </details>
> 
> 

</details>

# v6.0.9
## (2024-08-14)


<details>
<summary> Update layers/meta-balena to e6eec7bdb572753420bfe543750357c9f18ee4d8 [balena-renovate[bot]] </summary>

> ## meta-balena-6.0.9
> ### (2024-08-14)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to f4e9332 [balena-renovate[bot]] </summary>
> 
>> ### leviathan-2.31.25
>> #### (2024-08-06)
>> 
>> * Update actions/upload-artifact digest to 834a144 [balena-renovate[bot]]
>> 
>> ### leviathan-2.31.24
>> #### (2024-08-06)
>> 
>> * Update core/contracts digest to 6d69a05 [balena-renovate[bot]]
>> 
>> ### leviathan-2.31.23
>> #### (2024-07-23)
>> 
>> * core: remove nested retries in getDutIp function [rcooke-warwick]
>> 
>> ### leviathan-2.31.22
>> #### (2024-07-23)
>> 
>> * patch: Add migration & secureboot options to e2e test suite [Vipul Gupta (@vipulgupta2048)]
>> 
>> ### leviathan-2.31.21
>> #### (2024-07-22)
>> 
>> * Update docker/setup-buildx-action digest to aa33708 [Self-hosted Renovate Bot]
>> 
> 
> </details>
> 
> 

</details>

# v6.0.8
## (2024-08-14)


<details>
<summary> Update layers/meta-balena to ed18e751ab21b245070bd4db35f68aa2925add94 [balena-renovate[bot]] </summary>

> ## meta-balena-6.0.8
> ### (2024-08-14)
> 
> * tests: os: add check for iptables rules [rcooke-warwick]
> 

</details>

# v6.0.7+rev2
## (2024-08-13)

* Update layers/meta-freescale to c525e0c19bdc46d45f71873b5f286f49abb69418 [balena-renovate[bot]]

# v6.0.7+rev1
## (2024-08-12)


<details>
<summary> Update balena-yocto-scripts to 8450f5dfee536fe1cc26fda70916875857a7106f [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.25.22
> ### (2024-08-12)
> 
> * Update Lock file maintenance [balena-renovate[bot]]
> 

</details>

# v6.0.7
## (2024-08-09)


<details>
<summary> Update layers/meta-balena to cd2ee87b79d8b8edadc424084593a4ad9b69cb4f [balena-renovate[bot]] </summary>

> ## meta-balena-6.0.7
> ### (2024-08-09)
> 
> * modemmanager: Fix Quectel modems initialization bug [Florin Sarbu]
> 

</details>

# v6.0.6+rev17
## (2024-08-09)

* Update layers/poky to bba60774f74f8c05b8fdd609e8cdc40afd59c6a8 [balena-renovate[bot]]

# v6.0.6+rev16
## (2024-08-08)


<details>
<summary> Update contracts to bb77690aa0498f1060b64bebc183aea4fafb57e7 [balena-renovate[bot]] </summary>

> ## contracts-2.0.111
> ### (2024-08-08)
> 
> * patch: Add versionList to OpenJDK [Vipul Gupta (@vipulgupta2048)]
> 

</details>

# v6.0.6+rev15
## (2024-08-07)


<details>
<summary> Update contracts to 1663445fde467777e3d878e76193ea6fe9c1aefe [balena-renovate[bot]] </summary>

> ## contracts-2.0.110
> ### (2024-08-07)
> 
> * Add CompuLab iotdin-imx8p to harware contract. [Valentin Raevsky]
> 

</details>

# v6.0.6+rev14
## (2024-08-06)


<details>
<summary> Update balena-yocto-scripts to 7d0bda80dd3e21bef15fe91b085fe183923c1c94 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.25.21
> ### (2024-08-06)
> 
> * Update balena-os/leviathan digest to f4e9332 [balena-renovate[bot]]
> 

</details>

# v6.0.6+rev13
## (2024-08-06)


<details>
<summary> Update balena-yocto-scripts to 4b5388010fd6abbcfed8bc03076fd1f82fd59e56 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.25.20
> ### (2024-08-06)
> 
> * Update actions/upload-artifact action to v4.3.6 [balena-renovate[bot]]
> 

</details>

# v6.0.6+rev12
## (2024-08-06)


<details>
<summary> Update balena-yocto-scripts to 582a8eaa60b4a6eb6a3ec5d60013e7b2e6850ddb [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.25.19
> ### (2024-08-06)
> 
> * Update balena-os/leviathan digest to a16cf0f [balena-renovate[bot]]
> 

</details>

# v6.0.6+rev11
## (2024-08-06)


<details>
<summary> Update contracts to 6d69a05508a9232ba593962c62dc9dd133dee616 [balena-renovate[bot]] </summary>

> ## contracts-2.0.109
> ### (2024-08-06)
> 
> * hw.device-type: Update provisioning instructions for AGX Orin 64GB [Alexandru]
> 

</details>

# v6.0.6+rev10
## (2024-08-06)

* Update layers/poky to 93ef091fb2be38866a41bf87088625fbdfb69027 [balena-renovate[bot]]

# v6.0.6+rev9
## (2024-08-05)


<details>
<summary> Update balena-yocto-scripts to 730286256ce2ff6db73bce2b8289d2199596269e [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.25.18
> ### (2024-08-05)
> 
> * Update actions/upload-artifact action to v4.3.5 [balena-renovate[bot]]
> 

</details>

# v6.0.6+rev8
## (2024-08-05)


<details>
<summary> Update balena-yocto-scripts to b97db01f749f1b731160dc4d3fa72301a4d4b3ce [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.25.17
> ### (2024-08-05)
> 
> * Update Lock file maintenance [balena-renovate[bot]]
> 

</details>

# v6.0.6+rev7
## (2024-08-03)

* Update layers/meta-openembedded to 52ecd66835dcfd8b4e55c9cb6325908ccea6a4e7 [balena-renovate[bot]]

# v6.0.6+rev6
## (2024-07-30)


<details>
<summary> Update balena-yocto-scripts to 7736d3807540afb6646b435117bffa2377ac0156 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.25.16
> ### (Invalid date)
> 
> * Update docker/login-action action to v3.3.0 [balena-renovate[bot]]
> 

</details>

# v6.0.6+rev5
## (2024-07-30)


<details>
<summary> Update balena-yocto-scripts to c26623b4d09e6453244d6782c00756c4de60a53f [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.25.15
> ### (Invalid date)
> 
> * Update actions/upload-artifact action to v4.3.4 [balena-renovate[bot]]
> 

</details>

# v6.0.6+rev4
## (2024-07-29)


<details>
<summary> Update balena-yocto-scripts to ef6b7efa3a4f697e835412e6012a2f8bbeb94d37 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.25.14
> ### (2024-07-29)
> 
> * Update balena-os/leviathan digest to 36aafe0 [balena-renovate[bot]]
> 

</details>

# v6.0.6+rev3
## (2024-07-29)


<details>
<summary> Update balena-yocto-scripts to 6053c5a45a392dd85789fc46815506e57219bf29 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.25.13
> ### (2024-07-29)
> 
> * Update actions/checkout action to v4.1.7 [balena-renovate[bot]]
> 

</details>

# v6.0.6+rev2
## (2024-07-29)


<details>
<summary> Update balena-yocto-scripts to aaf04d274adcfe3dc408f0bec4db51c199c131b4 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.25.12
> ### (2024-07-29)
> 
> * Update Pin dependencies [balena-renovate[bot]]
> 

</details>

# v6.0.6+rev1
## (2024-07-29)


<details>
<summary> Update balena-yocto-scripts to cdc09006ec79c82efe149abfc8eb8b932924ef89 [balena-renovate[bot]] </summary>

> ## balena-yocto-scripts-1.25.11
> ### (2024-07-29)
> 
> * revovate: change config to use balena-io template [rcooke-warwick]
> 

</details>

# v6.0.6
## (2024-07-25)


<details>
<summary> Update layers/meta-balena to 137a7882c5f56d505ee5c757cedfb27ab20d89a8 [Self-hosted Renovate Bot] </summary>

> ## meta-balena-6.0.6
> ### (2024-07-25)
> 
> * patch: Fix broken links in CDS Docs [Vipul Gupta]
> 

</details>

# v6.0.5+rev3
## (2024-07-25)


<details>
<summary> Update contracts to 1d499fe7d33791e1ac6dccfe031e178b7d520bb4 [Self-hosted Renovate Bot] </summary>

> ## contracts-2.0.108
> ### (2024-07-25)
> 
> * hw.device-type: Add new device-type Jetson AGX Orin 64GB Devkit [Alexandru Costache]
> 

</details>

# v6.0.5+rev2
## (2024-07-25)

* Update layers/poky to 322d4df8cb51b531a998de92298914a6710d7677 [Self-hosted Renovate Bot]

# v6.0.5+rev1
## (2024-07-24)


<details>
<summary> Update balena-yocto-scripts to 34b4ee6c3aeabd21b9bb7b90536d837dbf465730 [Self-hosted Renovate Bot] </summary>

> ## balena-yocto-scripts-1.25.10
> ### (2024-07-23)
> 
> * By default, deploy hostapp on push only [Leandro Motta Barros]
> 
> ## balena-yocto-scripts-1.25.9
> ### (2024-07-22)
> 
> * use token to fetch private contracts [rcooke-warwick]
> * unroll balena_lib_build_contract function [rcooke-warwick]
> * unroll balena_api_is_dt_private function [rcooke-warwick]
> 

</details>

## (2024-07-24)

* Add Linux kernel v6.6.3 configs [Valentin Raevsky]
