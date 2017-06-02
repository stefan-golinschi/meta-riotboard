LICENSE = "CLOSED"

inherit kernel
require recipes-kernel/linux/linux-yocto.inc

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

PV="4.9.21"

# defconfig
SRC_URI += "file://defconfig"

# yocto config fragments
SRC_URI += "\
file://fragments/enable-printk.cfg \
file://fragments/enable-framebuffer.cfg \
file://fragments/enable-dynamic-printk.cfg \
file://fragments/enable-nfs-debug.cfg \
file://fragments/enable-mxs-framebuffer.cfg \
file://fragments/enable-ipu.cfg \
"

# patches
SRC_URI += "\
file://patches/0001-devicetree-lcd-support.patch \
"
