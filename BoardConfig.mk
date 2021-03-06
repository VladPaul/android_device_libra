LOCAL_PATH := device/xiaomi/libra

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/xiaomi/libra/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := msm8992

#Arch
TARGET_ARCH := arm64
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8992
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 boot_cpus=0-5 ramoops_memreserve=2M androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x0000000 --ramdisk_offset 0x02000000 --tags_offset 0x01E00000 --dt device/xiaomi/libra/dt.img

TARGET_PREBUILT_KERNEL := device/xiaomi/libra/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864 #64M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864 #64M
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2013265920 #1920M
BOARD_CACHEIMAGE_PARTITION_SIZE := 402653184 #384M
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27980184576 #26G
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 131072 #262144 #(BOARD_KERNEL_PAGESIZE * 64)
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

TW_THEME := portrait_hdpi
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
RECOVERY_SDCARD_ON_DATA := true
TW_INCLUDE_CRYPTO := true
TW_FLASH_FROM_STORAGE := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_NO_USB_STORAGE := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
BOARD_SUPPRESS_SECURE_ERASE := true
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
