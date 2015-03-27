# Copyright (C) 2009 The CyanogenMod Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := false

# inherit from common msm8960
-include device/samsung/msm8960-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/samsung/comanche/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/samsung/comanche/include

TARGET_BOOTLOADER_BOARD_NAME := MSM8960

# TARGET_KERNEL_USE_AOSP_TOOLCHAIN := false
# TARGET_KERNEL_TOOLCHAIN_VERSION := linaro-4.9

# TARGET_GCC_VERSION_ARM := arm-eabi-4.9-sm
# TARGET_GCC_VERSION_EXP := arm-eabi-4.9-sm
TARGET_USE_O3 := true
OPT_MEMORY := true

STRICT_ALIASING := true
GRAPHITE_OPTS := true
TARGET_USE_PIPE := true
USE_PREBUILT_CHROMIUM := 1

# Assert
TARGET_OTA_ASSERT_DEVICE := comanche
TARGET_BOARD_INFO_FILE ?= device/samsung/comanche/board-info.txt

# Kernel
# TARGET_KERNEL_SOURCE        := /home/motorhead/blackbird
TARGET_KERNEL_SOURCE        := kernel/samsung/blackbird
TARGET_KERNEL_CONFIG        := cyanogen_comanche_defconfig

# RIL
BOARD_RIL_CLASS := ../../../device/samsung/comanche/ril

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/comanche/bluetooth
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
QCOM_BT_USE_SMD_TTY := true

# WiFi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
WPA_SUPPLICANT_VERSION := VER_0_8_X
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/prima_wlan/parameters/fwpath"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP := "ap"

#Audio
BOARD_HAVE_AUDIENCE_A2220 := true
BOARD_USES_SEPERATED_VOICE_SPEAKER := true
BOARD_USES_FLUENCE_INCALL := false
BOARD_USES_FLUENCE_FOR_VOIP := false

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_NEED_DISABLE_FACE_DETECTION_BOTH_CAMERAS := true
TARGET_NEED_DISABLE_AUTOFOCUS := true
TARGET_NEED_PREVIEW_SIZE_FIXUP := true

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1258291200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5515509760
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_RECOVERY_FSTAB := device/samsung/comanche/rootdir/etc/fstab.qcom

# TWRP
#RECOVERY_VARIANT := twrp
DEVICE_RESOLUTION := 480x800
TW_DEFAULT_EXTERNAL_STORAGE := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_BRIGHTNESS_PATH := /sys/devices/platform/msm_fb.524801/leds/lcd-backlight/brightness
TW_MAX_BRIGHTESS := 255

TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/comanche
