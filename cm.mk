$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, vendor/cm/config/cdma.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/htc/fireball/device_fireball.mk)

# Device naming
PRODUCT_DEVICE := fireball
PRODUCT_NAME := cm_fireball
PRODUCT_BRAND := htc
PRODUCT_MODEL := Incredible 4G LTE
PRODUCT_MANUFACTURER := htc

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_fireball BUILD_ID=IMM76D BUILD_FINGERPRINT="verizon_wwe/fireball/fireball:4.0.4/IMM76D/111397.2:user/release-keys" PRIVATE_BUILD_DESC="2.17.605.2 CL111397 release-keys"

# Release name
PRODUCT_RELEASE_NAME := fireball

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540
