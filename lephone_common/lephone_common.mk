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

PRODUCT_PROPERTY_OVERRIDES :=
    ro.media.dec.jpeg.memcap=20000000

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml

# QCOM Display
PRODUCT_PACKAGES += \
    copybit.qsd8k \
    gralloc.qsd8k \
    hwcomposer.qsd8k \
    libmemalloc \
    libtilerenderer \
    libQcomUI \
    liboverlay \
    librs_jni \
    camera.qsd8k

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.qsd8k \
    audio.primary.qsd8k \
    libaudioutils
# Omx
PRODUCT_PACKAGES += \
	libOmxCore \
	libOmxVidEnc \
	libOmxVdec \
	libstagefrighthw 


# HDMI
PRODUCT_PACKAGES += \
    hdmid

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    lights.qcom \
    gps.qcom \
    libcamera


# Live Wallpapers
PRODUCT_PACKAGES += \
#    LiveWallpapers \
#    LiveWallpapersPicker \
#    VisualizationWallpapers \
#    librs_jni



# for bugmailer
ifneq ($(TARGET_BUILD_VARIANT),user)
    PRODUCT_PACKAGES += send_bug
    PRODUCT_COPY_FILES += \
        system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
        system/extras/bugmailer/send_bug:system/bin/send_bug
endif


# e2fsprogs
PRODUCT_PACKAGES += \
    libext2fs \
    libext2_uuid \
    libext2_e2p \
    libext2_blkid \
    libext2_com_err \
    libext2_profile \
    resize2fs \
    mke2fs \
    tune2fs \
    badblocks \
    e2fsck


# 8660 Common Firmware
PRODUCT_COPY_FILES += \
    device/lenovo/lephone_common/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf\
    device/lenovo/lephone_common/prebuilt/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \
    device/lenovo/lephone_common/prebuilt/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/lenovo/lephone_common/prebuilt/docking_event.kl:system/usr/keylayout/docking_event.kl \
    device/lenovo/lephone_common/prebuilt/8k_handset.kl:system/usr/keylayout/8k_handset.kl \
    device/lenovo/lephone_common/prebuilt/docking_event.kcm.bin:system/usr/keychars/docking_event.kcm.bin \
    device/lenovo/lephone_common/prebuilt/W88_CTP.idc:system/usr/idc/W88_CTP.idc \
    device/lenovo/lephone_common/prebuilt/surf_keypad.kcm.bin:system/usr/keychars/surf_keypad.kcm.bin \
    device/lenovo/lephone_common/configs/vold.fstab:system/etc/vold.fstab
PRODUCT_COPY_FILES += \
    device/lenovo/lephone_common/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/lenovo/lephone_common/configs/10hostapconf:system/etc/init.d/10hostapconf \
    device/lenovo/lephone_common/configs/hostapd.conf:system/etc/hostapd.conf \
    device/lenovo/lephone_common/configs/egl.cfg:system/etc/EGL/egl.cfg \
    device/lenovo/lephone_common/configs/wpa_supplicant.conf:system/etc/ppp/wpa_supplicant.conf
# Common Qualcomm scripts

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_LOCALES := zh_CN zh_TW

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
