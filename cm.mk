$(call inherit-product, device/samsung/comanche/full_comanche.mk)
#$(call inherit-product, $(LOCAL_PATH)/build_props.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=comanche TARGET_DEVICE=comanche BUILD_FINGERPRINT="comanche-user 4.3 IMM76D T699UVALEM release-keys" PRIVATE_BUILD_DESC="samsung/comanche/comanche:4.0.4/IMM76D/T699UVALEM:user/release-keys"

TARGET_BOOTANIMATION_NAME := vertical-480x800

PRODUCT_NAME := cm_comanche
PRODUCT_DEVICE := comanche

