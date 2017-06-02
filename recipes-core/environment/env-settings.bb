LICENSE = "CLOSED"
DESCRIPTION = "Useful environment vars for display and touchscreen features"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI = "\
file://qt-exports.sh \
"

do_install_append() {
	mkdir -p ${D}/${sysconfdir}/profile.d
	install -m 755 ${WORKDIR}/*.sh ${D}/${sysconfdir}/profile.d/
}

FILES_${PN} += "/${sysconfdir)/profile.d/*.sh"
