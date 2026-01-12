#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_64bit_device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit PBRP common bits
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit from m14x device
$(call inherit-product, device/samsung/m14x/device.mk)

## Device identifier.
PRODUCT_DEVICE := m14x
PRODUCT_NAME := pbrp_m14x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M146B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m14xnsxx-user 13 TP1A.220624.014 M146BXXUADYJ2 release-keys"

BUILD_FINGERPRINT := samsung/m14xnsxx/m14x:13/TP1A.220624.014/M146BXXUADYJ2:user/release-keys
