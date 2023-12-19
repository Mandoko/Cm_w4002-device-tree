## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := W4002

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/itel/W4002/device_W4002.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := W4002
PRODUCT_NAME := cm_W4002
PRODUCT_BRAND := itel
PRODUCT_MODEL := W4002
PRODUCT_MANUFACTURER := itel
