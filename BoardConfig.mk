# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from common msm8960
-include device/samsung/msm8960-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/samsung/comanche/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/samsung/comanche/include

# Kernel
#TARGET_PREBUILT_KERNEL      := device/samsung/comanche/kernel
TARGET_KERNEL_SOURCE        := kernel/samsung/comanche_samsung
#TARGET_KERNEL_SOURCE        := kernel/samsung/d2
TARGET_KERNEL_CONFIG        := comanche_rev02_defconfig
BOARD_KERNEL_CMDLINE        := console=null androidboot.hardware=qcom user_debug=31
BOARD_KERNEL_BASE           := 0x80200000
BOARD_FORCE_RAMDISK_ADDRESS := 0x81500000
BOARD_KERNEL_PAGESIZE       := 2048

TARGET_BOOTLOADER_BOARD_NAME := MSM8960

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/comanche/recovery/recovery_keys.c
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := device/samsung/comanche/recovery.fstab

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1258291200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5498732544
BOARD_FLASH_BLOCK_SIZE := 131072

# Disable initlogo, Samsungs framebuffer is weird
TARGET_NO_INITLOGO := true

# MTP Fixup
#BOARD_MTP_DEVICE := "/dev/usb_mtp_gadget"

# Use Audience A2220 chip
BOARD_HAVE_AUDIENCE_A2220 := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
TARGET_CUSTOM_BLUEDROID := ../../../device/samsung/comanche/bluetooth/bluetooth.c

# HAX
#BOARD_USE_SAMSUNG_SEPARATEDSTREAM := true
#BOARD_USES_LIBMEDIA_WITH_AUDIOPARAMETER := true
#TARGET_PROVIDES_LIBAUDIO := true

# Camera
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB
BOARD_USES_PROPRIETARY_LIBCAMERA := true
BOARD_USES_PROPRIETARY_LIBFIMC := true
COMMON_GLOBAL_CFLAGS += -DSAMSUNG_CAMERA_HARDWARE

# Assert
TARGET_OTA_ASSERT_DEVICE := comanche,SGH-I547

# Graphics fixups
TARGET_NO_HW_VSYNC := true
#TARGET_USES_C2D_COMPOSITION := true # In qcom-common
#USE_OPENGL_RENDERER := true  # In qcom-common


# Wifi related defines
WIFI_BAND := 802_11_ABG
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := 
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := 
BOARD_WLAN_DEVICE := qcwcn
BOARD_HAVE_SAMSUNG_WIFI := true

WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME     := "wlan"
WIFI_DRIVER_MODULE_ARG      := 
WIFI_DRIVER_FW_PATH_PARAM   := 
WIFI_DRIVER_FW_PATH_STA     := 
WIFI_DRIVER_FW_PATH_AP      := 
WIFI_DRIVER_FW_PATH_P2P     := 


# TWRP
DEVICE_RESOLUTION := 480x800
TW_DEFAULT_EXTERNAL_STORAGE := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := tru
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
