FILESEXTRAPATHS:prepend := "${THISDIR}/linux-sp-5.4:"

SRC_URI:append:tppg2 = " file://dts/sp7021-icognize.dts.patch"

KERNEL_DEVICETREE:append:tppg2 = " sp7021-icognize.dtb"
