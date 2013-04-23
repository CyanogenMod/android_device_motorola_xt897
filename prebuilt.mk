### copy to obj/ the prebuilts needed to build open source libraries
LOCAL_PATH := vendor/motorola/xt897

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/lib/libacdbloader.so:obj/lib/libacdbloader.so \
	$(LOCAL_PATH)/proprietary/lib/libmmjpeg.so:obj/lib/libmmjpeg.so \
	$(LOCAL_PATH)/proprietary/lib/libmmstillomx.so:obj/lib/libmmstillomx.so \
	$(LOCAL_PATH)/proprietary/lib/libimage-jpeg-enc-omx-comp.so:obj/lib/libimage-jpeg-enc-omx-comp.so \
	$(LOCAL_PATH)/proprietary/lib/liboemcamera.so:obj/lib/liboemcamera.so

$(call inherit-product-if-exists, $(LOCAL_PATH)/vendor-adreno-blobs.mk)
