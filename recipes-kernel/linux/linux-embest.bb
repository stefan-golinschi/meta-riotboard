LICENSE = "CLOSED"

inherit kernel
require recipes-kernel/linux/linux-yocto.inc

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

COMPATIBLE_MACHINE = "(mxs|mx5|mx6|vf)"

PROVIDES = "virtual/kernel"

PV = "3.10.17"

SRCREV = "${AUTOREV}"
SRCBRANCH = "embest_imx_3.10.17_1.0.0_ga"
SRC_URI = "git:///home/user/workspace/linux-imx;protocol=file;branch=${SRCBRANCH}"

S= "${WORKDIR}/git"

# defconfig:
SRC_URI += "\
file://defconfig \
"

# yocto config fragments
SRC_URI += "\
file://fragments/enable-nfs-debug.cfg \
file://fragments/enable-printk-timestamps.cfg \
file://fragments/disable-unused-ts-drivers.cfg \
file://fragments/enable-fhandle.cfg \
"

# patches:
SRC_URI += "\
file://patches/0001-fix-build-error-under-gcc6.patch \
file://patches/0002-rename-renamed-riotboard-dts-file.patch \
file://patches/0003-fix-compile-errors-with-gcc6-return-address.patch \
"
