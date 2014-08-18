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

## (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/comanche/comanche-vendor.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/comanche/overlay

# Hardware keyboard
PRODUCT_COPY_FILES += \
	device/samsung/comanche/keylayout/sec_keys.kl:system/usr/keylayout/sec_keys.kl \
	device/samsung/comanche/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl

# Ramdisk / boot logo
PRODUCT_COPY_FILES += \
    device/samsung/comanche/rootdir/initlogo.rle:root/initlogo.rle \
    device/samsung/comanche/recovery/twrp.fstab:recovery/root/etc/twrp.fstab 

# Media profile
PRODUCT_COPY_FILES += \
       device/samsung/comanche/media/media_profiles.xml:system/etc/media_profiles.xml

# scripts
PRODUCT_PACKAGES += \
    50bluetooth \
    60sensors \
    wifimac.sh

# prima wlan
PRODUCT_PACKAGES += \
    WCNSS_cfg.dat \
    WCNSS_qcom_cfg.ini \
    WCNSS_qcom_wlan_nv.bin

# d2-common
