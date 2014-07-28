# Copyright (C) 2010 The Android Open Source Project
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

# Prebuilt libraries that are needed to build open-source libraries

## (1) Copy Configuration files
PRODUCT_COPY_FILES += \
    device/lenovo/lephone_001w/prebuilt/vold.fstab:system/etc/vold.fstab \
    device/lenovo/lephone_001w/prebuilt/media_profiles.xml:system/etc/media_profiles.xml \
    device/lenovo/lephone_001w/prebuilt/apns-conf.xml:system/etc/apns-conf.xml \
    device/lenovo/lephone_001w/prebuilt/init.qcom.bt.sh:system/etc/init.qcom.bt.sh

## (2) Keypad and Touchscreen
PRODUCT_COPY_FILES += \
    device/lenovo/lephone_001w/prebuilt/keychars/docking_event.kcm:system/usr/keychars/docking_event.kcm \
    device/lenovo/lephone_001w/prebuilt/keychars/surf_keypad.kcm:system/usr/keychars/surf_keypad.kcm \
    device/lenovo/lephone_001w/prebuilt/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \
    device/lenovo/lephone_001w/prebuilt/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/lenovo/lephone_001w/prebuilt/keylayout/docking_event.kl:system/usr/keylayout/docking_event.kl \
    device/lenovo/lephone_001w/prebuilt/keylayout/8k_handset.kl:system/usr/keylayout/8k_handset.kl \
    device/lenovo/lephone_001w/prebuilt/idc/W88_CTP.idc:system/usr/idc/W88_CTP.idc

## (3) Ramdisk
PRODUCT_COPY_FILES += \
    device/lenovo/lephone_001w/prebuilt/root/init.qcom.rc:root/init.qcom.rc \
    device/lenovo/lephone_001w/prebuilt/root/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/lenovo/lephone_001w/prebuilt/root/initlogo.rle:root/initlogo.rle \
    device/lenovo/lephone_001w/prebuilt/root/ueventd.qcom.rc:root/ueventd.qcom.rc

## (4) WiFi
PRODUCT_COPY_FILES += \
    device/lenovo/lephone_001w/prebuilt/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/lenovo/lephone_001w/prebuilt/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    device/lenovo/lephone_001w/prebuilt/ar6000.ko:system/wifi/ar6000.ko
