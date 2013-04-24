TARGET_USES_MOTOROLA_COMMON_LIBLIGHT:=false
TARGET_USES_MOTOROLA_COMMON_IDC:=false
TARGET_USES_MOTOROLA_COMMON_KEYCHARS:=false
TARGET_USES_MOTOROLA_COMMON_KEYLAYOUT:=false

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, device/motorola/msm8960-common/msm8960.mk)

LOCAL_PATH := device/motorola/xt897

# xt897 specific overlay
PRODUCT_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

#lights
TARGET_PROVIDES_LIBLIGHT := true
PRODUCT_PACKAGES += \
    lights.msm8960

#sqlite3
PRODUCT_PACKAGES += \
    sqlite3

#custom settings
PRODUCT_PACKAGES += \
    PhotonQParts

PRODUCT_LOCALES := en_US
PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

#misc
PRODUCT_PROPERTY_OVERRIDES += \
    persist.log.aplogd.enable=1 \
    ro.product.model.exif=XT897

# QCOM Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \

#telephony
PRODUCT_PROPERTY_OVERRIDES += \
    telephony.lteOnGsmDevice=1 \
    ro.telephony.ril.v3=signalstrength \
    DEVICE_PROVISIONED=1 \
    ro.telephony.default_network=3

# IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/atmxt-i2c.idc:system/usr/idc/atmxt-i2c.idc \
    $(LOCAL_PATH)/idc/keypad_8960.idc:system/usr/idc/keypad_8960.idc

# keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl

# Keychars
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keychars/keypad_8960.kcm:system/usr/keychars/keypad_8960.kcm

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/gps.conf:system/etc/gps.conf

$(call inherit-product-if-exists, vendor/motorola/xt897/xt897-vendor.mk)

