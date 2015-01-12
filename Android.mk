LOCAL_PATH := $(call my-dir)

ifneq ($(filter xt897 xt897c,$(TARGET_DEVICE)),)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
