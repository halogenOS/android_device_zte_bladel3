# inherit from the proprietary version
-include vendor/zte/bladel3/BoardConfigVendor.mk

LOCAL_PATH := device/zte/bladel3

# Platform
TARGET_BOARD_PLATFORM := mt6582
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6582

TARGET_USERIMAGES_USE_EXT4 :=true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

# Kernel 
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048

# make_ext4fs requires numbers in dec format
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 13485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5314707456
BOARD_CACHEIMAGE_PARTITION_SIZE := 134217728
BOARD_CACHEIMAGE_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/bootimg.mk
BOARD_MKBOOTIMG_ARGS := --board 1336460062
BOARD_CUSTOM_BOOTIMG := true

TARGET_KMODULES := true

# Assert
TARGET_OTA_ASSERT_DEVICE := mt6582,bladel3,aeon6582_wt_nj_l,P182A20,BLU

# MTK HARDWARE
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
BOARD_USES_LEGACY_MTK_AV_BLOB := true
BOARD_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
BOARD_GLOBAL_CPPFLAGS += -DMTK_HARDWARE

# Flags
TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

BOARD_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# WIFI
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# GPS
#TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# RIL
#BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril/

BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_CONNECTIVITY_MODULE := conn_soc

# CWM
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/recovery.fstab
BOARD_HAS_NO_SELECT_BUTTON := true

# TWRP
DEVICE_RESOLUTION := 480x854
BOARD_HAS_LARGE_FILESYSTEM := true
TW_NO_USB_STORAGE := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_NO_REBOOT_BOOTLOADER := true
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_INTERNAL_STORAGE_PATH := "/external_sd"
TW_INTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"

# Offline charging
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/BOOT/BOOT/boot/boot_mode
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

# EGL settings
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_EGL_NEEDS_HANDLE_VALUE := true
BOARD_EGL_NEEDS_FNW := true
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

LEGACY_NEEDS_PUBLIC_LAYERVECTOR := true

TARGET_FORCE_DEXPREOPT ?= false
WITH_DEXPREOPT := $(TARGET_FORCE_DEXPREOPT)

# Selinux
BOARD_SEPOLICY_DIRS += $(LOCAL_PATH)/sepolicy

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Hack for build
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
