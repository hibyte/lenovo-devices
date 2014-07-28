## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := lephone_002e
TARGET_BOOTANIMATION_NAME := vertical-480x800
# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/lephone_002e/device_lephone_002e.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := lephone_002e
PRODUCT_NAME := cm_lephone_002e
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := lephone_002e
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_VERSION_DEVICE_SPECIFIC := -Lenovo-CCLabs
PRODUCT_RELEASE_NAME := lephone_002e
# Goo.im configuration
    GOO_VERSION := $(shell date +%Y%m%d)
PRODUCT_PROPERTY_OVERRIDES += \
ro.goo.developerid=york \
ro.goo.rom=CM9-Lenovo-CCLabs \
ro.goo.version=$(GOO_VERSION)
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.allow.mock.location=1
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lenovo_lephone_002e BUILD_FINGERPRINT=htc_europe/htc_pyramid/pyramid:4.0.3/IML74K/309896.3:user/release-keys PRIVATE_BUILD_DESC="3.32.401.3 CL309896 release-keys" BUILD_NUMBER=309896
