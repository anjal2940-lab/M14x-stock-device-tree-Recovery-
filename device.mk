LOCAL_PATH := device/samsung/m14x

# Enable updating of the partition table
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# PBRP / TWRP localized recovery resources
PRODUCT_PACKAGES += \
    libpuresoftkey \
    libkeymaster4 \
    libkeymaster41

# Copy recovery.fstab to the ramdisk
# Samsung devices look for the fstab in both /system/etc and /etc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:recovery/root/system/etc/recovery.fstab \
    $(LOCAL_PATH)/recovery.fstab:recovery/root/etc/recovery.fstab

# Copy the prebuilt Kernel and DTBO
# Note: Ensure these file names match what is in your 'prebuilt' folder
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/kernel:kernel \
    $(LOCAL_PATH)/prebuilt/dtbo.img:dtbo.img

# Inherit from generic recovery
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_system.mk)
