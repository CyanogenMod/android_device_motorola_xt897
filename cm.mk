# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/qcom-common/overlay-cm

# Media
PRODUCT_COPY_FILES += \
    device/motorola/msm8960_jbbl-common/config/media_codecs.xml:system/etc/media_codecs.xml

# Boot animation
TARGET_SCREEN_WIDTH := 540
TARGET_SCREEN_HEIGHT := 960

PRODUCT_NAME := cm_xt897
TARGET_VENDOR_PRODUCT_NAME := XT897
TARGET_VENDOR_DEVICE_NAME := asanti_c


$(call inherit-product, device/motorola/xt897/full_xt897.mk)

