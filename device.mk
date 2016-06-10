# Copyright (C) 2016 The CyanogenMod Project
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

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/htc/fireball/fireball-vendor.mk)

# Inherit s4-common
$(call inherit-product, device/htc/s4-common/s4.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/fireball/overlay

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# Audio
PRODUCT_COPY_FILES += \
    device/htc/fireball/dsp/snd_soc_msm/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x

# Input
PRODUCT_COPY_FILES += \
    device/htc/fireball/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    device/htc/fireball/idc/projector_input.idc:system/usr/idc/projector_input.idc \
    device/htc/fireball/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    device/htc/fireball/idc/tv-touchscreen.idc:system/usr/idc/tv-touchscreen.idc

PRODUCT_COPY_FILES += \
    device/htc/fireball/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
    device/htc/fireball/keylayout/dummy_keypad.kl:system/usr/keylayout/dummy_keypad.kl \
    device/htc/fireball/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/fireball/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    device/htc/fireball/keylayout/msm8960-snd-card_Button_Jack.kl:system/usr/keylayout/msm8960-snd-card_Button_Jack.kl \
    device/htc/fireball/keylayout/projector-Keypad.kl:system/usr/keylayout/projector-Keypad.kl \
    device/htc/fireball/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
    device/htc/fireball/keylayout/tv-touchscreen.kl:system/usr/keylayout/tv-touchscreen.kl

# Media config
PRODUCT_COPY_FILES += \
    device/htc/fireball/configs/media_profiles.xml:system/etc/media_profiles.xml

# NFCEE access control
ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := device/htc/fireball/configs/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := device/htc/fireball/configs/nfcee_access_debug.xml
endif
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

# NFC Support
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    libnfc \
    libnfc_jni \
    Nfc \
    nfc.msm8960 \
    Tag

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.target.rc
