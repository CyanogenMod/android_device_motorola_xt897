$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/motorola/xt897/device_xt897.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := xt897
PRODUCT_NAME := full_xt897
PRODUCT_BRAND := motorola
PRODUCT_MODEL := XT897
PRODUCT_MANUFACTURER := motorola
