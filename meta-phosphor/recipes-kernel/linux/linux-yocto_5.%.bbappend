FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += " ${@bb.utils.contains("DISTRO_FEATURES", "measured_boot", "file://measured_boot.cfg", "" ,d)}"
