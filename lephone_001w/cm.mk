# Inherit AOSP device configuration for lephone_001w.
$(call inherit-product, device/lenovo/lephone_001w/device_lephone_001w.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_BRAND := lenovo
PRODUCT_NAME := cm_lephone_001w
PRODUCT_DEVICE := lephone_001w
PRODUCT_MODEL := 3GW100
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lephone_001w \
BUILD_FINGERPRINT=google/yakju/maguro:4.0.4/IMM76D/299849:user/release-keys \
PRIVATE_BUILD_DESC="yakju-user 4.0.4 IMM76D 299849 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := 3GW100
PRODUCT_VERSION_DEVICE_SPECIFIC := -Lenovo-CCLabs

# Goo.im configuration
    GOO_VERSION := $(shell date +%Y%m%d)
PRODUCT_PROPERTY_OVERRIDES += \
ro.goo.developerid=eggshell \
ro.goo.rom=CM9-Lenovo-CCLabs \
ro.goo.version=$(GOO_VERSION)

# Get eng stuff on our userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.allow.mock.location=1
