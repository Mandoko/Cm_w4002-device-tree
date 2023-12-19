USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/itel/W4002/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := sp7731e
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := sp7731e_1h20
TARGET_USES_64_BIT_BINDER := true
TARGET_CPU_VARIANT_RUNTIME := cortex-a7
 

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048

TARGET_PREBUILT_KERNEL := device/itel/W4002/kernel

BOARD_HAS_NO_SELECT_BUTTON := true




# Partition sizes
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 36700160
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 36700160
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor
BOARD_SUPER_PARTITION_SIZE := 9126805504 # TODO: Fix hardcoded value
BOARD_SUPER_PARTITION_GROUPS := itel_dynamic_partitions
BOARD_ITEL_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product
BOARD_ITEL_DYNAMIC_PARTITIONS_SIZE := 9122611200 # TODO: Fix hardcoded value
#BOARD_HAS_LARGE_FILESYSTEM := true

# Recovery
TARGET_RECOVERY_INITRC := device/itel/W4002/recovery/init.rc
TARGET_RECOVERY_FSTAB := device/itel/W4002/recovery/recovery.fstab
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"
DEVICE_RESOLUTION := 480x800
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
