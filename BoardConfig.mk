TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_BOOTLOADER_BOARD_NAME := cocktail

TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a8
TARGET_DISABLE_ARM_PIE := true
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true

TARGET_SPECIFIC_HEADER_PATH := device/alcatel/cocktail/include

# Kernel/bootimg
TARGET_KERNEL_SOURCE := kernel/alcatel/alcatel-kernel-msm7x30
TARGET_KERNEL_CONFIG := OT995_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3
BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=cocktail
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096
# BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01100000
BOARD_FLASH_BLOCK_SIZE := 1

# Partition sizes
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x0500000 # boot ~5Mb
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x0500000 # recovery ~5Mb
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 262144000 # system ~256Mb
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 314572800 # custpack=system/app ~300Mb
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1064304640 # data ~1GB
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200 # cache ~200Mb
BOARD_FLASH_BLOCK_SIZE := 4096

# Internal storage
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1

# Input
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_LEGACY_TOUCHSCREEN := true

# kernel
# TARGET_PREBUILT_KERNEL := device/alcatel/cocktail/kernel

# Recovery
BOARD_CUSTOM_GRAPHICS := ../../../device/alcatel/cocktail/recovery/graphics.c
TARGET_PREBUILT_RECOVERY_KERNEL := device/alcatel/cocktail/kernel_recovery
TARGET_RECOVERY_INITRC := device/alcatel/cocktail/init.recovery.rc
TARGET_RECOVERY_FSTAB := device/alcatel/cocktail/recovery.fstab # SDcard mount fix

# OTA
TARGET_OTA_ASSERT_DEVICE := cocktail
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/alcatel/cocktail/releasetools/ota_from_target_files

# QCOM Display
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
TARGET_QCOM_DISPLAY_VARIANT := legacy
# TARGET_QCOM_AUDIO_VARIANT := legacy
BOARD_EGL_CFG := device/alcatel/cocktail/egl.cfg
BOARD_USES_ADRENO_200 := true
TARGET_QCOM_HDMI_OUT := true
TARGET_NO_HW_VSYNC := false
BOARD_EGL_NEEDS_LEGACY_FB := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_GENLOCK := true
USE_OPENGL_RENDERER := true

# Audio
BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_ALSA_AUDIO := true

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_FM_DEVICE := bcm4330
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# Boot animation speedup
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# QCOM
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
BOARD_USE_QCOM_PMEM := true
BOARD_USES_QCOM_GPS := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_LIBS := true
BOARD_VENDOR_QCOM_AMSS_VERSION := 6225
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := cocktail
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
TARGET_USES_PMEM := true

# Legacy
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK -DNO_UPDATE_PREVIEW
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_DECODERS -DQCOM_LEGACY_OMX
BOARD_NEEDS_MEMORYHEAPPMEM := true
TARGET_PROVIDES_LIBAUDIO := true

# radio interface
BOARD_MOBILEDATA_INTERFACE_NAME = "rmnet0"

# WiFi
BOARD_LEGACY_NL80211_STA_EVENTS := true
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
BOARD_WLAN_DEVICE_REV       := bcm4330_b2
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/wifi/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/wifi/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/system/etc/wifi/firmware/fw_bcmdhd_p2p.bin"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/alcatel/cocktail/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/alcatel/cocktail/bluetooth/vnd_cocktail.txt

