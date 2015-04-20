$(call inherit-product, device/samsung/comanche/full_comanche.mk)
#$(call inherit-product, $(LOCAL_PATH)/build_props.mk)

# Inherit some common deso stuff.
$(call inherit-product-if/exist, vendor/deso/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/deso/config/nfc_enhanced.mk)

# Inherit some common deso stuff.
$(call inherit-product, vendor/deso/config/common.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=comanche TARGET_DEVICE=comanche BUILD_FINGERPRINT="Samsung/COMANCHE/comanche:4.1.2/JZO54K/I847UCCNJ1:user/release-keys" PRIVATE_BUILD_DESC="comanche-user 4.1.2 JZO54K I847UCCNJ1 release-keys"

PRODUCT_NAME := deso_comanche
PRODUCT_DEVICE := comanche

