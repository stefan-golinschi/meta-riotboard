# Specific apps
IMAGE_INSTALL_append = " vphone-gui"

# Qt related
IMAGE_INSTALL_append = " qtbase"
IMAGE_INSTALL_append = " cantarell-fonts"

# Touchscreen related
IMAGE_INSTALL_append = " tslib tslib-tests tslib-calibrate tslib-conf"
IMAGE_INSTALL_append = " pointercal"

# Optional
IMAGE_INSTALL_append = " psplash"
