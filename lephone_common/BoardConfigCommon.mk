# Copyright (C) 2012 The CyanogenMod Project
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

TARGET_SPECIFIC_HEADER_PATH := device/lenovo/lephone_common/include

# Bootloader
TARGET_NO_RECOVERY := true
TARGET_NO_BOOTLOADER := true
USE_CAMERA_STUB := true
# Platform
TARGET_BOARD_PLATFORM := qsd8k
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_LEGACY_CAMERA := true
# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := false
ARCH_ARM_HAVE_TLS_REGISTER := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_FM_RADIO := false
ARCH_ARM_HAVE_NEON := true
BOARD_USE_SCREENCAP := true
BOARD_USES_GENERIC_AUDIO := false
TARGET_PROVIDES_LIBAUDIO := true
BOARD_HAS_NO_MISC_PARTITION := true
# Wifi related defines
TARGET_CAMERA_WRAPPER := qsd8k
BOARD_OVERLAY_FORMAT_YCrCb_420_SP := true
TARGET_USES_2G_VM_SPLIT := true
BOARD_HAVE_HTC_FFC := true
TARGET_BOOTLOADER_BOARD_NAME := 8x50
BOARD_USES_GENERIC_AUDIO := false
QCOM_TARGET_PRODUCT := qsd8250_surf
# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE
BOARD_USES_GENERIC_AUDIO := false
COMMON_GLOBAL_CFLAGS += -DLEGACY_AUDIO_COMPAT
# Scorpion optimizations
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_FORCE_CPU_UPLOAD := true
BOARD_USE_SKIA_LCDTEXT := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
WIFI_DRIVER_MODULE_PATH     := /system/wifi/ar6000.ko
WIFI_DRIVER_MODULE_NAME     := ar6000

# Bluetooth
BOARD_KERNEL_BASE := 0x20000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_CAMERA_USE_GETBUFFERINFO := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# QCOM hardware
BOARD_USE_CAF_LIBCAMERA := true
BOARD_USE_FFC_CAMERA := true
TARGET_GRALLOC_USES_QCOM_PMEM := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USE_QCOM_PMEM := true
BOARD_USE_REVERSE_FFC := true
BOARD_USES_QCOM_GPS := true
BOARD_GPS_LIBRARIES := libloc libloc_api
BOARD_USES_GPSSHIM := true
BOARD_GPS_NEEDS_XTRA := true
BOARD_NO_RGBX_8888 := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_USES_LEGACY_QCOM := false

BOARD_USES_AUDIO_LEGACY := true
# Unnecessary with new egl libs
COMMON_GLOBAL_CFLAGS   += -DMISSING_EGL_EXTERNAL_IMAGE -DMISSING_EGL_PIXEL_FORMAT_YV12
# We only have 2 buffers so still need to hack it.
COMMON_GLOBAL_CFLAGS    += -DMISSING_GRALLOC_BUFFERS
# Just a safety measure to make sure its all included
COMMON_GLOBAL_CFLAGS    += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS    += -DUNABLE_TO_DEQUEUE
# Force refresh rate since fps calc is broke and reports 0
COMMON_GLOBAL_CFLAGS    += -DREFRESH_RATE=60
# qsd8k: no support for overlay, bypass, or c2d
TARGET_HAVE_BYPASS      := false
TARGET_USES_C2D_COMPOSITION := false
# Allow fallback to ashmem
TARGET_GRALLOC_USES_ASHMEM := true
# Debuging egl
COMMON_GLOBAL_CFLAGS    += -DEGL_TRACE
BOARD_USE_OPENSSL_ENGINE := true
TARGET_USES_OLD_LIBSENSORS_HAL:=true
BOARD_USE_FROYO_LIBCAMERA := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_HARDWARE := true

# Graphics
USE_OPENGL_RENDERER := false
TARGET_NO_BYPASS_CROPPING := true
TARGET_HAVE_BYPASS := false
TARGET_USES_OVERLAY := false
TARGET_QCOM_HDMI_OUT := false
TARGET_QCOM_HDMI_RESOLUTION_AUTO := flase
BOARD_EGL_CFG := device/lenovo/lephone_common/configs/egl.cfg
BOARD_USES_QCOM_LIBRPC := true
# Filesystem
BOARD_VOLD_MAX_PARTITIONS := 36
TARGET_USES_GENLOCK     := false
# FM Radio
#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_MOBILEDATA_INTERFACE_NAME := "rmnet0"
# Webkit
TARGET_FORCE_CPU_UPLOAD := true
DYNAMIC_SHARED_LIBV8SO := false
BOARD_USE_LEGACY_TOUCHSCREEN := true
TARGET_KERNEL_SOURCE := kernel/lenovo/qsd8k
BOARD_USE_LEGACY_TRACKPAD := true
#TARGET_WEBKIT_USE_MORE_MEMORY := true
#JS_ENGINE := v8
#WITH_JIT := true
