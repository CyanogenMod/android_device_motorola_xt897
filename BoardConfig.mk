# inherit from platform common
-include device/motorola/msm8960-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/motorola/xt897/BoardConfigVendor.mk

LOCAL_PATH := device/motorola/xt897

# Inline kernel building
TARGET_KERNEL_SOURCE := kernel/motorola/msm8960-common
TARGET_KERNEL_CONFIG := msm8960_mmi_defconfig

# copy all kernel modules under the "kernel/modules" directory to system/lib/modules
PRODUCT_COPY_FILES += $(shell \
	find $(LOCAL_PATH)/kernel/modules -name '*.ko' 2> /dev/null \
	| sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
	| tr '\n' ' ')

BOARD_KERNEL_CMDLINE := console=/dev/null androidboot.hardware=qcom user_debug=31 loglevel=1 msm_rtb.filter=0x3F kgsl.mmutype=gpummu zcache
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01600000

#bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

