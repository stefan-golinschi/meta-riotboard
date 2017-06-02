#!/bin/sh

export QT_QPA_PLATFORM=linuxfb:fb=/dev/fb0
export QT_QPA_FONTDIR=/usr/share/fonts/cantarell
export QT_QPA_FB_TSLIB=1
export TSLIB_CONFFILE=/etc/ts.conf
export TSLIB_TSDEVICE=/dev/input/touchscreen0
