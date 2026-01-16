LOCAL_PATH := device/samsung/m14x

# Inherit from generic recovery
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_system.mk)

# Enable project path config
PRODUCT_SHIPPING_API_LEVEL := 31
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# PBRP / TWRP localized recovery resources
PRODUCT_PACKAGES += \
    libpuresoftkey

# Install recovery fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:recovery/root/system/etc/recovery.fstab \
    $(LOCAL_PATH)/recovery.fstab:recovery/root/etc/recovery.fstab

# MANUAL COPY: This method bypasses the Makefile conflicts for Kernel/DTBO/DTB
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/kernel:kernel \
    $(LOCAL_PATH)/prebuilt/dtbo.img:dtbo.img \
    $(LOCAL_PATH)/prebuilt/dtb/dtb.img:dtb

# PBRP Specific Properties
PRODUCT_PRODUCT_PROPERTIES += \
    ro.pbrp.device=m14x \
    ro.pbrp.maintainer=Ansh_m14x
