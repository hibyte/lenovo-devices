USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lenovo/lephone_002e/BoardConfigVendor.mk
-include device/lenovo/lephone_common/BoardConfigCommon.mk
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := qsd8k
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := lephone_002e

BOARD_KERNEL_CMDLINE := console=ttyMSM2,115200n8 androidboot.hardware=lephone_002e
BOARD_KERNEL_BASE := 0x20000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_FORCE_RAMDISK_ADDRESS := 0x21000000
# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/lenovo/lephone_002e/kernel
TARGET_KERNEL_CONFIG := 3gw101_defconfig
#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true

