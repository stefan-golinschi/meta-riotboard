# Specific apps
IMAGE_INSTALL_append = " vphone"

# Qt related
IMAGE_INSTALL_append = " qtbase"
IMAGE_INSTALL_append = " cantarell-fonts"

# Touchscreen related
IMAGE_INSTALL_append = " tslib tslib-tests tslib-calibrate tslib-conf"
IMAGE_INSTALL_append = " pointercal"

# External libs
IMAGE_INSTALL_append = " pjproject"
PREFERRED_VERSION_pjproject = "2.6"

# Optional
IMAGE_INSTALL_append = " psplash"
IMAGE_INSTALL_append = " tzdata tzdata-europe"
DEFAULT_TIMEZONE = "Europe/Bucharest"

# Environment vars:
IMAGE_INSTALL_append = " env-settings"
