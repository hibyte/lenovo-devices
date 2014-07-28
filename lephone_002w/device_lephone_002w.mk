$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_mini.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony_mini.mk)
# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)
# common qsd8k configs
$(call inherit-product, device/lenovo/lephone_common/lephone_common.mk)
$(call inherit-product-if-exists, vendor/lenovo/lephone_002w/lephone_002w-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lenovo/lephone_002w/overlay
# Torch
PRODUCT_PACKAGES += \
    Torch
PRODUCT_COPY_FILES := \
    device/lenovo/lephone_002w/prebuilt/init.lephone_002w.rc:root/init.lephone_002w.rc \
    device/lenovo/lephone_002w/prebuilt/init.rc:root/init.rc \
    device/lenovo/lephone_002w/prebuilt/initlogo.rle:root/initlogo.rle \
    device/lenovo/lephone_002w/prebuilt/ueventd.lephone_002w.rc:root/ueventd.lephone_002w.rc \
    device/lenovo/lephone_002w/prebuilt/ueventd.rc:root/ueventd.rc

# Default network type.
# 0 => WCDMA preferred.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072


PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapsize=32m

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15 \
    ro.com.android.dataroaming=false  \
    ro.com.google.locationfeatures=1 \
    keyguard.no_require_sim=true \
    ro.com.android.dateformat=yyyy-MM-dd \
    ro.com.android.dataroaming=false \
    ro.sf.lcd_density=240 \
    rild.libpath=/system/lib/libril-qc-1.so \
    rild.libargs=-d /dev/smd0 \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.verify-bytecode=false \
    dalvik.vm.dexopt-flags=v=n,o=v \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.checkjni=false \
    debug.sf.hw=1 \
    ro.zram.default=0 \
    ro.media.dec.aud.wma.enabled=1 \
    ro.media.dec.vid.wmv.enabled=1 \
    hwui.render_dirty_regions=false \
    hwui.disable_vsync=true \
    BUILD_UTC_DATE=0 \
    persist.ro.ril.sms_sync_sending=1
# Speed up scrolling
PRODUCT_PROPERTY_OVERRIDES += \
    windowsmgr.max_events_per_sec=260

# Default network type.
# 0 => WCDMA preferred, 3 => GSM/AUTO (PRL) preferred
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=3

# WiFi configuration
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=180
# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072

# This is a high density device with more memory, so larger vm heaps for it.
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-data-only=1

LOCAL_PATH := device/lenovo/lephone_002w
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product-if-exists, build/target/product/full_mini.mk)
$(call inherit-product-if-exists, vendor/lenovo/lephone_002w/lephone_002w-vendor.mk)
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_lephone_002w
PRODUCT_DEVICE := lephone_002w
