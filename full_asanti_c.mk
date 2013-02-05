$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/moto/asanti_c/device_asanti_c.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := asanti_c
PRODUCT_NAME := cm_asanti_c
PRODUCT_BRAND := motorola
PRODUCT_MODEL := XT897
PRODUCT_MANUFACTURER := motorola
