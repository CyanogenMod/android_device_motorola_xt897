$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, device/moto/msm8960-common/msm8960.mk)

LOCAL_PATH := device/moto/asanti_c

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

#lights
PRODUCT_PACKAGES += \
	lights.msm8960

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
	$(LOCAL_PATH)/proprietary/wlanprima/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
	$(LOCAL_PATH)/proprietary/wlanprima/WCNSS_qcom_wlan_nv_calibration.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv_calibration.bin \
	$(LOCAL_PATH)/proprietary/wlanprima/WCNSS_qcom_wlan_nv_regulatory.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv_regulatory.bin

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
PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

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
	ro.sf.compbypass.enable=1 \
	dev.pm.dyn_samplingrate=1 \
	debug.egl.hw=1 \
	debug.sf.hw=1 \
	debug.composition.type=dyn \
	debug.gr.numframebuffers=3 \
	persist.sys.ui.hw=true \
	debug.composition.type=c2d \
	debug.enabletr=0 \
	ro.hwui.text_cache_width=2048

# QC CnE
PRODUCT_PROPERTY_OVERRIDES += \
	persist.cne.UseCne=none \
	persist.cne.UseSwim=false \
	persist.cne.bat.range.low.med=30 \
	persist.cne.bat.range.med.high=60 \
	persist.cne.loc.policy.op=/system/etc/OperatorPolicy.xml \
	persist.cne.loc.policy.user=/system/etc/UserPolicy.xml \
	persist.cne.bwbased.rat.sel=false \
	persist.cne.snsr.based.rat.mgt=false \
	persist.cne.bat.based.rat.mgt=false \
	persist.cne.rat.acq.time.out=30000 \
	persist.cne.rat.acq.retry.tout=0 \
	persist.cne.nsrm.mode=false

# Radio and Telephony
PRODUCT_PROPERTY_OVERRIDES += \
	rild.libpath=/system/lib/libril-qc-qmi-1.so \
	rild.libargs=-d /dev/smd0 \
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
	persist.timed.enable=true \
	ro.telephony.ril.v3=signalstrength \
	persist.rild.nitz_plmn= \
	persist.rild.nitz_long_ons_0= \
	persist.rild.nitz_long_ons_1= \
	persist.rild.nitz_long_ons_2= \
	persist.rild.nitz_long_ons_3= \
	persist.rild.nitz_short_ons_0= \
	persist.rild.nitz_short_ons_1= \
	persist.rild.nitz_short_ons_2= \
	persist.rild.nitz_short_ons_3=

# IDC
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/idc/atmxt-i2c.idc:system/usr/idc/atmxt-i2c.idc \
	$(LOCAL_PATH)/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
	$(LOCAL_PATH)/idc/qwerty.idc:system/usr/idc/qwerty.idc \
	$(LOCAL_PATH)/idc/keypad_8960.idc:system/usr/idc/keypad_8960.idc

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# keylayouts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl

# Keychars
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/keychars/keypad_8960.kcm:system/usr/keychars/keypad_8960.kcm

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/config/gps.conf:system/etc/gps.conf \

$(call inherit-product-if-exists, vendor/moto/asanti_c/asanti_c-vendor.mk)
