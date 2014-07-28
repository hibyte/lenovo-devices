# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
USE_CAMERA_STUB := false

# Call headers from msm-3.0: needed to build libs in hardware/qcom/display
TARGET_SPECIFIC_HEADER_PATH := device/lenovo/lephone_001w/include

# Target information
TARGET_NO_RECOVERY := true
TARGET_BOOTLOADER_BOARD_NAME := 8x50
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Target chipset/platform
TARGET_BOARD_PLATFORM := qsd8k
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
QCOM_TARGET_PRODUCT := qsd8250_surf
TARGET_USES_2G_VM_SPLIT := true

# Neon stuff
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := false
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_ARMV7A_BUG := true
ARCH_ARM_HAVE_NEON := true
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true

# WiFI
BOARD_WPA_SUPPLICANT_DRIVER := AWEXT
WIFI_DRIVER_MODULE_NAME     := ar6000
WIFI_DRIVER_MODULE_PATH     := /system/wifi/ar6000.ko

# Audio
BOARD_USES_GENERIC_AUDIO := false
TARGET_PROVIDES_LIBAUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_FM_RADIO := false

# QCOM
BOARD_VENDOR_QCOM_AMSS_VERSION := 6225
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_HARDWARE := true

# Graphics
TARGET_USE_OVERLAY      := false
TARGET_HAVE_BYPASS      := false
TARGET_USES_C2D_COMPOSITION := false
BOARD_USES_GENLOCK := false
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_FORCE_CPU_UPLOAD := true
BOARD_USE_SKIA_LCDTEXT := true
#USE_OPENGL_RENDERER := true
TARGET_GRALLOC_USES_ASHMEM := true
COMMON_GLOBAL_CFLAGS += -DMISSING_GRALLOC_BUFFERS
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT
COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_EXTERNAL_IMAGE 
COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_PIXEL_FORMAT_YV12
COMMON_GLOBAL_CFLAGS += -DUNABLE_TO_DEQUEUE

TARGET_NO_BYPASS_CROPPING := true
BOARD_EGL_CFG := device/lenovo/lephone_001w/prebuilt/egl.cfg

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := qcom
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

# Dynamic shared V8 library 
DYNAMIC_SHARED_LIBV8SO := false

# Sensors
TARGET_USES_OLD_LIBSENSORS_HAL := true

# ICS Stuff
BOARD_USE_LEGACY_TOUCHSCREEN := true
BOARD_USE_LEGACY_TRACKPAD := true

# Browser
TARGET_WEBKIT_USE_MORE_MEMORY := true
JS_ENGINE := v8
WITH_JIT := true

#kernel
BOARD_KERNEL_CMDLINE := console=ttyMSM2,115200n8 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x20000000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_PREBUILT_KERNEL := device/lenovo/lephone_001w/prebuilt/root/kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/lenovo/lephone_001w/prebuilt/root/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# filesystem
# cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00500000 00020000 "boot"
# mtd1: 09100000 00020000 "system"
# mtd2: 13580000 00020000 "userdata"
# mtd3: 00080000 00020000 "fota_flag"
# mtd4: 00100000 00020000 "fota_backup"
# mtd5: 00080000 00020000 "fota_ua"
# mtd6: 00a20000 00020000 "fota"
# mtd7: 01140000 00020000 "amss"
BOARD_NAND_PAGE_SIZE := 2048
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x09100000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x13580000
BOARD_FLASH_BLOCK_SIZE := $(BOARD_NAND_PAGE_SIZE) * 64

#mmc
BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p1
