$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, device/moto/msm8960-common/msm8960.mk)

LOCAL_PATH := device/moto/asanti_c

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

#scripts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/scripts/init.goldfish.sh:system/etc/init.goldfish.sh \
	$(LOCAL_PATH)/scripts/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
	$(LOCAL_PATH)/scripts/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
	$(LOCAL_PATH)/scripts/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
	$(LOCAL_PATH)/scripts/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh \
	$(LOCAL_PATH)/scripts/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
	$(LOCAL_PATH)/scripts/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
	$(LOCAL_PATH)/scripts/qcamerasrvwrapper.sh:system/bin/qcamerasrvwrapper.sh \
	$(LOCAL_PATH)/scripts/mount_pds.sh:system/bin/mount_pds.sh

#init
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/root/ueventd.qcom.rc:root/ueventd.qcom.rc \
	$(LOCAL_PATH)/root/init.mmi.usb.rc:root/init.mmi.usb.rc \
	$(LOCAL_PATH)/root/init.mmi.usb.sh:root/init.mmi.usb.sh \
	$(LOCAL_PATH)/root/init.msm.rc:root/init.msm.rc \
	$(LOCAL_PATH)/root/init.qcom.sh:root/init.qcom.sh \
	$(LOCAL_PATH)/root/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
	$(LOCAL_PATH)/root/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
	$(LOCAL_PATH)/root/init.qcom.rc:root/init.qcom.rc \
	$(LOCAL_PATH)/root/fstab.qcom:root/fstab.qcom \
	$(LOCAL_PATH)/root/init.target.rc:root/init.target.rc

#media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/config/media_profiles.xml:system/etc/media_profiles.xml \
	$(LOCAL_PATH)/config/media_codecs.xml:system/etc/media_codecs.xml

#audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x

#config
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/config/vold.fstab:system/etc/vold.fstab

#wifi
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/config/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	$(LOCAL_PATH)/proprietary/wlanprima/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
	$(LOCAL_PATH)/proprietary/wlanprima/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini

# EGL config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/egl.cfg:system/lib/egl/egl.cfg

#adreno
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/adreno/etc/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
	$(LOCAL_PATH)/proprietary/adreno/etc/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
	$(LOCAL_PATH)/proprietary/adreno/etc/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
	$(LOCAL_PATH)/proprietary/adreno/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
	$(LOCAL_PATH)/proprietary/adreno/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
	$(LOCAL_PATH)/proprietary/adreno/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
	$(LOCAL_PATH)/proprietary/adreno/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
	$(LOCAL_PATH)/proprietary/adreno/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
	$(LOCAL_PATH)/proprietary/adreno/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
	$(LOCAL_PATH)/proprietary/adreno/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
	$(LOCAL_PATH)/proprietary/adreno/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
	$(LOCAL_PATH)/proprietary/adreno/lib/egl/libGLESv2S3D_adreno200.so:system/lib/egl/libGLESv2S3D_adreno200.so \
	$(LOCAL_PATH)/proprietary/adreno/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
	$(LOCAL_PATH)/proprietary/adreno/lib/libC2D2.so:system/lib/libC2D2.so \
	$(LOCAL_PATH)/proprietary/adreno/lib/libc2d2_z180.so:system/lib/libc2d2_z180.so \
	$(LOCAL_PATH)/proprietary/adreno/lib/libgsl.so:system/lib/libgsl.so \
	$(LOCAL_PATH)/proprietary/adreno/lib/libOpenVG.so:system/lib/libOpenVG.so \
	$(LOCAL_PATH)/proprietary/adreno/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so

PRODUCT_LOCALES := en_US
PRODUCT_LOCALES += xhdpi
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

#misc
PRODUCT_PROPERTY_OVERRIDES += \
	persist.fuse_sdcard=true \
	ro.usb.mtp_usbnet=0x2e32 \
	ro.usb.mtp_usbnet_adb=0x2e33 \
	ro.usb.cdrom=0x2e20 \
	ro.usb.ms=0x2e21 \
	ro.usb.ms_adb=0x2e22 \
	ro.usb.ptp=0x2e30 \
	ro.usb.ptp_adb=0x2e31 \
	ro.hdmi.enable=true \
	ro.product.model.exif=XT897

#wifi
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.qc.sub.rstrtlvl=3 \
	persist.sys.qc.sub.rdump.on=1 \
	persist.sys.qc.sub.rdump.max=20

# QCOM Display
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=240 \
	debug.egl.hw=1 \
	debug.sf.hw=1 \
	debug.gr.numframebuffers=3 \
	persist.sys.ui.hw=true \
	debug.composition.type=c2d \
	debug.enabletr=0 \
	ro.hwui.text_cache_width=2048

# Radio and Telephony
PRODUCT_PROPERTY_OVERRIDES += \
	rild.libpath=/system/lib/libril-qc-qmi-1.so \
	ril.subscription.types=NV,RUIM \
	keyguard.no_require_sim=true \
	ro.use_data_netmgrd=true \
	ro.ril.transmitpower=true \
	persist.radio.apm_sim_not_pwdn=1 \
	persist.radio.call_type=1 \
	persist.audio.fluence.mode=endfire \
	persist.audio.vr.enable=false \
	ro.qc.sdk.audio.fluencetype=fluence \
	persist.audio.handset.mic=digital \
	ro.config.vc_call_vol_steps=7 \
	persist.timed.enable=true

# IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/melfas-ts.idc:system/usr/idc/melfas-ts.idc \
    $(LOCAL_PATH)/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    $(LOCAL_PATH)/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    $(LOCAL_PATH)/idc/evfwd.idc:system/usr/idc/evfwd.idc

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

#telephony
#note: Sim card models do not have correct band for LTE, so turn it off
PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.ril.v3=signalstrength

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/config/gps.conf:system/etc/gps.conf \

$(call inherit-product-if-exists, vendor/moto/asanti_c/asanti_c-vendor.mk)
