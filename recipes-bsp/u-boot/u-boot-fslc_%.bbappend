FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "\
file://1-enabled-random-ethaddr.patch \
file://2-configured-network.patch \
file://3-reverted-phy-delay.patch \
file://4-boot-environment-setup.patch \
"
