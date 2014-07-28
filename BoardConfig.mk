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
USE_CAMERA_STUB := true

# inherit from common msm8960 - not anymore.
#-include device/samsung/msm8960-common/BoardConfigCommon.mk


# inherit from the proprietary version
-include vendor/samsung/comanche/BoardConfigVendor.mk
# inherit from common d2 - get d2 working
-include device/samsung/d2lte/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := comanche

# Kernel
TARGET_KERNEL_CONFIG        := cyanogen_comanche_defconfig
BOARD_MKBOOTIMG_ARGS        := --ramdisk_offset 0x01500000
TARGET_KERNEL_SOURCE        := kernel/samsung/d2

# Not a unified device
TARGET_UNIFIED_DEVICE :=
TARGET_INIT_VENDOR_LIB :=
TARGET_LIBINIT_DEFINES_FILE :=

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/apexqtmo/bluetooth
BOARD_BLUEDROID_VENDOR_CONF :=
BOARD_BLUETOOTH_USES_HCIATTACH_PROPERTY :=
BOARD_HAVE_BLUETOOTH_BCM :=
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
QCOM_BT_USE_SMD_TTY := true

# Wifi
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_HAVE_SAMSUNG_WIFI :=
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true

WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/prima_wlan.ko"
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/prima_wlan/parameters/fwpath"
WIFI_DRIVER_MODULE_NAME     := "prima_wlan"
WIFI_DRIVER_MODULE_ARG      :=
WIFI_DRIVER_MODULE_AP_ARG   :=
WIFI_DRIVER_FW_PATH_STA     := "sta"
WIFI_DRIVER_FW_PATH_AP      := "ap"
WIFI_DRIVER_FW_PATH_P2P     :=

#Audio
BOARD_HAVE_AUDIENCE_A2220 :=
BOARD_USES_SEPERATED_VOICE_SPEAKER := true
BOARD_USES_FLUENCE_INCALL := false
BOARD_USES_FLUENCE_FOR_VOIP := false

# Camera
TARGET_NEED_DISABLE_FACE_DETECTION_BOTH_CAMERAS := true
TARGET_NEED_DISABLE_AUTOFOCUS := true
# TARGET_NEED_PREVIEW_SIZE_FIXUP := true

# TWRP
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
