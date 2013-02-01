$(call inherit-product-if-exists, vendor/samsung/comanche/comanche-vendor.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

## The gps config appropriate for this device
PRODUCT_COPY_FILES += device/common/gps/gps.conf_US_SUPL:system/etc/gps.conf

## overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/comanche/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# init sh scripts
PRODUCT_COPY_FILES += \
    device/samsung/comanche/rootdir/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/samsung/comanche/rootdir/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    device/samsung/comanche/rootdir/etc/init.qcom.usb.sh:system/etc/init.qcom.usb.sh

# Keymaps (comanche has extra key / non-standard keymaps compared to msm8960-common)
PRODUCT_COPY_FILES += \
    device/samsung/comanche/overlay/device/samsung/msm8960-common/keylayout/sec_keys.kl:system/usr/keylayout/sec_keys.kl \
    device/samsung/comanche/overlay/device/samsung/msm8960-common/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl

# WPA Supplicant
PRODUCT_COPY_FILES += \
    device/samsung/comanche/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf

# Audio configuration
PRODUCT_COPY_FILES += \
    device/samsung/comanche/audio/audio_policy.conf:system/etc/audio_policy.conf \
    device/samsung/comanche/audio/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x
#    device/samsung/comanche/audio/snd_soc_msm/snd_soc_msm:system/etc/snd_soc_msm/snd_soc_msm \
#    device/samsung/comanche/audio/snd_soc_msm/Call_DL_Rec:system/etc/snd_soc_msm/Call_DL_Rec \
#    device/samsung/comanche/audio/snd_soc_msm/Call_UL_DL_Rec:system/etc/snd_soc_msm/Call_UL_DL_Rec \
#    device/samsung/comanche/audio/snd_soc_msm/DSP_Loopback:system/etc/snd_soc_msm/DSP_Loopback \
#    device/samsung/comanche/audio/snd_soc_msm/HiFi:system/etc/snd_soc_msm/HiFi \
#    device/samsung/comanche/audio/snd_soc_msm/HiFi_Low_Power:system/etc/snd_soc_msm/HiFi_Low_Power \
#    device/samsung/comanche/audio/snd_soc_msm/HiFi_Rec:system/etc/snd_soc_msm/HiFi_Rec \
#    device/samsung/comanche/audio/snd_soc_msm/HiFi_Voice_Recognition:system/etc/snd_soc_msm/HiFi_Voice_Recognition \
#    device/samsung/comanche/audio/snd_soc_msm/Loopback:system/etc/snd_soc_msm/Loopback \
#    device/samsung/comanche/audio/snd_soc_msm/Video_Call:system/etc/snd_soc_msm/Video_Call \
#    device/samsung/comanche/audio/snd_soc_msm/Voice_Call1:system/etc/snd_soc_msm/Voice_Call1 \
#    device/samsung/comanche/audio/snd_soc_msm/VoIP1:system/etc/snd_soc_msm/VoIP1 \
#    device/samsung/comanche/audio/snd_soc_msm/VoIP2:system/etc/snd_soc_msm/VoIP2 \
#    device/samsung/comanche/audio/snd_soc_msm/VoIP3:system/etc/snd_soc_msm/VoIP3 \
#    device/samsung/comanche/audio/snd_soc_msm/VoIP4:system/etc/snd_soc_msm/VoIP4 \
#    device/samsung/comanche/audio/snd_soc_msm/VoIP5:system/etc/snd_soc_msm/VoIP5

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    initlogo.rle \
    init.bt.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.target.rc \
    ueventd.qcom.rc

# Torch
PRODUCT_PACKAGES += Torch

# Vold configuration
PRODUCT_COPY_FILES += \
    device/samsung/comanche/vold.fstab:system/etc/vold.fstab

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.debuggable=1 \
    persist.service.adb.enable=1

# Lights
PRODUCT_PACKAGES += lights.msm8960

# QC Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

# QRNGD
PRODUCT_PACKAGES += qrngd

#common build.props
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    persist.radio.add_power_save=1 \
    persist.radio.snapshot_disabled=1 \
    com.qc.hardware=true \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.gps.qmienabled=true \
    ro.telephony.call_ring.multiple=0 \
    ro.sf.lcd_density=240 \
    ro.ril.transmitpower=true \
    ro.opengles.version=131072 \
    persist.audio.fluence.mode=endfire \
    persist.audio.vr.enable=false \
    persist.audio.handset.mic=digital \
    ro.qc.sdk.audio.fluencetype=fluence \
    persist.timed.enable=true \
    ro.emmc.sdcard.partition=17 \
    ro.use_data_netmgrd=true \
    persist.data_netmgrd_nint=16 \
    lpa.decode=false \
    lpa.use-stagefright=false \
    rild.libpath=/system/lib/libril-qc-qmi-1.so \
    ril.subscription.types=NV,RUIM \
    ro.telephony.ril.v3=skipnullaid \
    ro.sf.compbypass.enable=1 \
    debug.composition.type=dyn \
    debug.egl.hw=1 \
    ro.product.wireless=WCN3660 \
    wifi.interface=wlan0 \
    ro.use_data_netmgrd=true
    

# common msm8960
$(call inherit-product, device/samsung/msm8960-common/msm8960.mk)

# Proper hdpi support
$(call inherit-product, frameworks/native/build/phone-hdpi-dalvik-heap.mk)

# Device vendor
$(call inherit-product-if-exists, vendor/samsung/comanche/comanche-vendor.mk)
