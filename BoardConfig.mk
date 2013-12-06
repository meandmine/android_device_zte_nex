USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/zte/N800/BoardConfigVendor.mk


# Platform
TARGET_BOARD_PLATFORM := msm8630
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := nex

# Flags
#TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
#TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
#COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
#TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000
TARGET_KERNEL_SOURCE := kernel/zte/nex
TARGET_KERNEL_CONFIG := cyanogenmod_nex_defconfig
TARGET_PREBUILT_KERNEL := device/zte/nex/kernel

# fix this up by examining /proc/mtd on a running device
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1082130432
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2122317824
BOARD_FLASH_BLOCK_SIZE := 512

# Allow Power Button To Be Select In Recovery
BOARD_HAS_NO_SELECT_BUTTON := true

# EXT4 larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true

# Fix for flicker issue
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# TWRP
DEVICE_RESOLUTION := 480x800
RECOVERY_GRAPHICS_USE_LINELENGTH := true
