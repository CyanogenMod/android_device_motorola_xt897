LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),xt897)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif

ifeq ($(TARGET_DEVICE),xt897c)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
