# Common ROM version
ROM_VERSION_STABLE = 000
ROM_VERSION_BETA = 000
ROM_VERSION_ALPHA = 007
ROM_VERSION_EXP = 000

BUILD_VERSION = $(ROM_VERSION_STABLE)$(ROM_VERSION_BETA)$(ROM_VERSION_ALPHA)$(ROM_VERSION_EXP)

# General
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.user=kemonine \
    ro.build.host=epidemic \
	ro.developerid=kemonine \
	ro.modversion=$(BUILD_VERSION)

# Goo.im
PRODUCT_PROPERTY_OVERRIDES += \
	ro.goo.developerid=kemonine \
	ro.goo.board=comanche \
	ro.goo.rom=CyanogenMod10.1 \
	ro.goo.version=$(BUILD_VERSION)

# Rom Manager
PRODUCT_PROPERTY_OVERRIDES += \
	ro.rommanager.developerid=kemonine

