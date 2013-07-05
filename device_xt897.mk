#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, device/motorola/msm8960-common/msm8960.mk)

LOCAL_PATH := device/motorola/xt897

# xt897 specific overlay
PRODUCT_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

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
    persist.log.aplogd.enable=1

# QCOM Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \

#telephony
PRODUCT_PROPERTY_OVERRIDES += \
    telephony.lteOnGsmDevice=1 \
    ro.telephony.ril.v3=signalstrength \
    ro.telephony.default_network=3 \
    persist.sys.report_gprs_as_edge=1

# IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/atmxt-i2c.idc:system/usr/idc/atmxt-i2c.idc \
    $(LOCAL_PATH)/idc/keypad_8960.idc:system/usr/idc/keypad_8960.idc \
    $(LOCAL_PATH)/idc/gpio-keys.idc:system/usr/idc/gpio-keys.idc

# keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl

# Keychars
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keychars/keypad_8960.kcm:system/usr/keychars/keypad_8960.kcm

$(call inherit-product, device/motorola/msm8960-common/modules/nfc/nfc.mk)
$(call inherit-product-if-exists, vendor/motorola/xt897/xt897-vendor.mk)

