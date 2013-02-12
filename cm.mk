# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 540
TARGET_SCREEN_HEIGHT := 960

# Release name
PRODUCT_RELEASE_NAME := asanti_c

$(call inherit-product, device/moto/asanti_c/full_asanti_c.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_BRAND=motorola PRODUCT_NAME=xt897 BUILD_PRODUCT=asanti_c BUILD_FINGERPRINT=motorola/XT897_us_spr/asanti_c:4.0.4/7.7.1Q-6_SPR-125_ASA-14/15:user/release-keys

