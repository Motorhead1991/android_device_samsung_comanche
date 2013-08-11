#
# Copyright (C) 2011 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/comanche/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Audio configuration
PRODUCT_COPY_FILES += \
    device/samsung/comanche/audio/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
    device/samsung/comanche/audio/audio_policy.conf:system/etc/audio_policy.conf \
    device/samsung/comanche/audio/audio_effects.conf:system/etc/audio_effects.conf

# Hardware keyboard
PRODUCT_COPY_FILES += \
	device/samsung/comanche/keylayout/sec_keys.kl:system/usr/keylayout/sec_keys.kl \
	device/samsung/comanche/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl

# Ramdisk
PRODUCT_COPY_FILES += \
    device/samsung/comanche/rootdir/init.qcom.rc:root/init.qcom.rc \
    device/samsung/comanche/rootdir/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/samsung/comanche/rootdir/fstab.qcom:root/fstab.qcom \
    device/samsung/comanche/rootdir/ueventd.qcom.rc:root/ueventd.qcom.rc \
    device/samsung/comanche/rootdir/init.target.rc:root/init.target.rc \
    device/samsung/comanche/rootdir/initlogo.rle:root/initlogo.rle 

# Bluetooth
PRODUCT_COPY_FILES += \
    device/samsung/comanche/configs/init.qcom.bt.sh:system/etc/init.qcom.bt.sh 

# Torch
PRODUCT_PACKAGES += Torch

# Vold configuration
PRODUCT_COPY_FILES += \
    device/samsung/comanche/vold.fstab:system/etc/vold.fstab

# Wifi
PRODUCT_PACKAGES += \
    libnetcmdiface

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Lights
PRODUCT_PACKAGES += lights.msm8960

# Sensors
PRODUCT_PACKAGES += sensors.msm8960

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
    persist.audio.speaker.location=high \
    ro.qc.sdk.audio.fluencetype=fluence \
    persist.timed.enable=true \
    ro.emmc.sdcard.partition=17 \
    ro.use_data_netmgrd=true \
    persist.data_netmgrd_nint=16 \
    lpa.decode=false \
    rild.libpath=/system/lib/libril-qc-qmi-1.so \
    ril.subscription.types=NV,RUIM \
    ro.config.svlte1x=true \
    persist.radio.no_wait_for_card=1 \
    keyguard.no_require_sim=true \
    media.aac_51_output_enabled=true

# Inherit from d2-common
$(call inherit-product, device/samsung/d2-common/d2-common.mk)
