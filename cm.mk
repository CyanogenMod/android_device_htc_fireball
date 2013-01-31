$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, vendor/cm/config/cdma.mk)

# VZW APN list
PRODUCT_COPY_FILES += \
    device/htc/fireball/prebuilt/common/etc/apns-conf-vzw.xml:system/etc/apns-conf.xml

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


# Release name
PRODUCT_RELEASE_NAME := fireball

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

-include vendor/cm/config/common_versions.mk
