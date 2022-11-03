FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = '${@bb.utils.contains("DISTRO_FEATURES", "measured_boot", " file://measured_boot.cfg", "", d)}'

# tmp
SRC_URI:append:qemuarm = '${@bb.utils.contains("DISTRO_FEATURES", "measured_boot", " file://qemuarm_defboot.cfg", "", d)}'
