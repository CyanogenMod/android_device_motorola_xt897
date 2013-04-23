## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

$(call inherit-product, device/motorola/msm8960-common/cm.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 540
TARGET_SCREEN_HEIGHT := 960

# Release name
PRODUCT_RELEASE_NAME := xt897
PRODUCT_NAME := cm_xt897

$(call inherit-product, device/motorola/xt897/full_xt897.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_BRAND=motorola PRODUCT_NAME=xt897 BUILD_PRODUCT=xt897 BUILD_FINGERPRINT=motorola/XT897_us_spr/asanti_c:4.1.2/9.8.2Q-122_XT897_FFW-5/6:user/release-keys

