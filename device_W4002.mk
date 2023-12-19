$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/itel/W4002/W4002-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/itel/W4002/overlay

LOCAL_PATH := device/itel/W4002
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# recovery
PRODUCT_COPY_FILES += \
    device/itel/W4002/recovery/fstab:recovery.fstab/root/fstab \
    device/itel/W4002/recovery/ueventd.rc:recovery/root/ueventd.rc \
    device/itel/W4002/recovery/ueventd.sp7731e_1h20.rc:recovery/root/ueventd.sp7731e_1h20.rc

PRODUCT_PACKAGES += \
    static_busybox \
    make_ext4fs \
    setup_fs

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_W4002
PRODUCT_DEVICE := W4002
