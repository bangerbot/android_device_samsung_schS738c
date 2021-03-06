# inherit from the proprietary version
#-include vendor/samsung/schS738c/BoardConfigVendor.mk

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

DEVICE_PACKAGE_OVERLAYS += device/samsung/schS738c/overlay

## Kernel, Bootloader
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom loglevel=1
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_KERNEL_SOURCE := kernel/samsung/schS738c
#TARGET_PREBUILT_KERNEL := device/samsung/schS738c/kernel
#TARGET_KERNEL_CONFIG := amazing3g_cdma_00_defconfig

TARGET_KERNEL_CONFIG := cyanogenmod/cm_schS738c_defconfig
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

## Platform Configuration
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_LOWMEM := true
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_NO_KERNEL := false
TARGET_USERIMAGES_USE_EXT4 := true

## Software Configuration
TARGET_SHELL := ash

# Enable dex-preoptimization to speed up the first boot sequence
# of an SDK AVD. Note that this operation only works on Linux for now
ifeq ($(HOST_OS),linux)
WITH_DEXPREOPT := true
endif
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_HAVE_TSLIB := true

#COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
#TARGET_GLOBAL_CFLAGS += -mtune=cortex-a5 -mfpu=neon-vfpv4 -mfloat-abi=softfp
#TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a5 -mfpu=neon-vfpv4 -mfloat-abi=softfp

TARGET_SPECIFIC_HEADER_PATH := device/samsung/schS738c/include

## Qcom hardwae
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_QCOM_BSP := true
#COMMON_GLOBAL_CFLAGS += -DQCOM_BSP
#COMMON_GLOBAL_CFLAGS += -DMSM_BSP
QCOM_TARGET_PRODUCT := msm7627a
#TARGET_AVOID_DRAW_TEXTURE_EXTENSION := true
#TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true

## Video
#TARGET_QCOM_MEDIA_VARIANT := caf
#TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
#COMMON_GLOBAL_CFLAGS += -DQCOM_LEGACY_MMPARSER

## Graphics
BUILD_EMULATOR_OPENGL := true
USE_OPENGL_RENDERER := true
TARGET_QCOM_DISPLAY_VARIANT := legacy
TARGET_DOESNT_USE_FENCE_SYNC := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
BOARD_EGL_CFG := device/samsung/schS738c/graphics/lib/egl.cfg

## FM radio
BOARD_HAVE_QCOM_FM := true

## Charger
BOARD_LPM_BOOT_ARGUMENT_NAME := androidboot.boot_pause
BOARD_LPM_BOOT_ARGUMENT_VALUE := batt

## Audio
HAVE_HTC_AUDIO_DRIVER := true
BOARD_USES_GENERIC_AUDIO := true
#TARGET_QCOM_AUDIO_VARIANT := caf
#BOARD_USES_LEGACY_ALSA_AUDIO := true
#COMMON_GLOBAL_CFLAGS += -DNO_TUNNELED_SOURCE
#QCOM_DIRECTTRACK := true

#LEGACY_LPA := true
#BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true
#COMMON_GLOBAL_CFLAGS += -DAUDIO_LEGACY_HACK -DHAVE_PRE_KITKAT_AUDIO_BLOB

## Network / Wi-Fi
BOARD_WLAN_DEVICE := ath6kl
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_ath6kl
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_ath6kl
WIFI_EXT_MODULE_NAME := "cfg80211"
WIFI_EXT_MODULE_PATH := "/system/lib/modules/cfg80211.ko"
WIFI_DRIVER_MODULE_AP_ARG := "suspend_mode=3 wow_mode=2 ath6kl_p2p=1 recovery_enable=1"
WIFI_DRIVER_MODULE_NAME := "ath6kl_sdio"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/ath6kl_sdio.ko"
WIFI_DRIVER_MODULE_ARG := "suspend_mode=3 wow_mode=2 ath6kl_p2p=1 recovery_enable=1"

## Camera
USE_CAMERA_STUB := true
TARGET_DISABLE_ARM_PIE := true
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT -DNEEDS_VECTORIMPL_SYMBOLS
COMMON_GLOBAL_CFLAGS += -DCAMERA_NO_UNWANTED_MSG -DSAMSUNG_CAMERA_LEGACY

## RIL
BOARD_USES_LEGACY_RIL := true
BOARD_MOBILEDATA_INTERFACE_NAME := "pdp0"

## Bluetooth
BOARD_HAVE_BLUETOOTH := true

## Misc
TARGET_PROVIDES_LIBLIGHTS := true

## Memory
TARGET_USES_ION := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
BOARD_USE_MHEAP_SCREENSHOT := true

## Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 24

## UMS
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun%d/file"

## Workaround Samsung Framebuffer
TARGET_NO_INITLOGO := true

## Charging mode
BOARD_LPM_BOOT_ARGUMENT_NAME := androidboot.boot_pause
BOARD_LPM_BOOT_ARGUMENT_VALUE := batt

TARGET_PROVIDES_LIBLIGHTS := true
TARGET_PROVIDES_LIBAUDIO := true

## Override healthd HAL
BOARD_HAL_STATIC_LIBRARIES := libhealthd.msm7x27a

## Recovery
TARGET_RECOVERY_INITRC := device/samsung/schS738c/recovery/etc/init.recovery.qcom.rc
TARGET_RECOVERY_FSTAB := device/samsung/schS738c/schS738c.fstab
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"
TARGET_RECOVERY_SWIPE := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_HAS_DOWNLOAD_MODE := true
BOARD_USES_MMCUTILS := true
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_NO_SELECT_BUTTON := true
TW_THEME := portrait_mdpi
#DEVICE_RESOLUTION := 320x480
#RECOVERY_SDCARD_ON_DATA := true

## Filesystem
BOARD_DATA_DEVICE := /dev/block/mmcblk0p18
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := rw
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p16
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM_OPTIONS := rw
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p17
BOARD_CACHE_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM_OPTIONS := rw

## Partition Sizes
#BOARD_BOOTIMAGE_PARTITION_SIZE := 	4194304
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 	6291456
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 	230686720
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 	179393600
#BOARD_BOOTIMAGE_PARTITION_SIZE := 	50331648
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 	12582912
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 	524288000
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 	979369984
#
BOARD_BOOTIMAGE_PARTITION_SIZE := 	8388608
#
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 	8388608
#
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 	487136952
#
BOARD_USERDATAIMAGE_PARTITION_SIZE := 	2920577761
