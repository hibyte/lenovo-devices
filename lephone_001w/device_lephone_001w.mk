# Packages to include
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory \
	lights.qcom \
	gps.qcom \
	libcamera

# OMX
PRODUCT_PACKAGES += \
	libstagefrighthw \
	libOmxCore \
	libmm-omxcore \
	libOmxVdec \
	libOmxVidEnc

# GPU
PRODUCT_PACKAGES += \
	gralloc.qsd8k \
	camera.qsd8k \
	libQcomUI \
	libtilerenderer \
	liboverlay \
	librs_jni

#Audio
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio_policy.qsd8k \
	audio.primary.qsd8k

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

# proprietary side of the device
$(call inherit-product-if-exists, vendor/lenovo/lephone_001w/lephone_001w-vendor.mk)

$(call inherit-product, frameworks/base/build/phone-hdpi-512-dalvik-heap.mk)

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_LOCALES := zh_CN zh_TW

# Passion uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Check generic.mk/languages_full.mk to see what applications/languages are installed turns out all languages get included if I don't specify, but some seem to be missing the actuall translation.
#$(call inherit-product, build/target/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Pick up overlay for features that depend on non-open-source files
DEVICE_PACKAGE_OVERLAYS := device/lenovo/lephone_001w/overlay

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects
# Additional settings used in AOSP builds
PRODUCT_PROPERTY_OVERRIDES += \
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

PRODUCT_PROPERTY_OVERRIDES += ro.vold.umsdirtyratio=20

# 3GW100 hardware revision
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hw_version=6

# Speed up scrolling
PRODUCT_PROPERTY_OVERRIDES += \
    windowsmgr.max_events_per_sec=260

# Default network type.
# 0 => WCDMA preferred, 3 => GSM/AUTO (PRL) preferred
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=3

# WiFi configuration
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=eth0 \
    wifi.supplicant_scan_interval=180

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072

# This is a high density device with more memory, so larger vm heaps for it.
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-data-only=1

# proprietary side of the device
$(call inherit-product-if-exists, device/lenovo/lephone_001w/3GW100Proprietary.mk)

# Overrides
PRODUCT_BRAND := lenovo
PRODUCT_NAME := cm_lephone_001w
PRODUCT_DEVICE := lephone_001w
PRODUCT_MODEL := 3GW100
PRODUCT_MANUFACTURER := Lenovo
