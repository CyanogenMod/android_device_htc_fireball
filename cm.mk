## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := fireball

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/fireball/device_fireball.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := fireball
PRODUCT_NAME := cm_fireball
PRODUCT_BRAND := htc
PRODUCT_MODEL := fireball
PRODUCT_MANUFACTURER := htc
