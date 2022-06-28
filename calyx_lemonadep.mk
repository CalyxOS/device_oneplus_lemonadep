#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff.
$(call inherit-product, vendor/calyx/config/common.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from lemonadep device
$(call inherit-product, device/oneplus/lemonadep/device.mk)

PRODUCT_NAME := calyx_lemonadep
PRODUCT_DEVICE := lemonadep
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := LE2125

PRODUCT_SYSTEM_NAME := OnePlus9Pro
PRODUCT_SYSTEM_DEVICE := OnePlus9Pro

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus9Pro-user 12 SKQ1.210216.001 R.202204081955 release-keys" \
    TARGET_DEVICE=OnePlus9Pro \
    TARGET_PRODUCT=OnePlus9Pro

BUILD_FINGERPRINT := OnePlus/OnePlus9Pro/OnePlus9Pro:12/SKQ1.210216.001/R.202204081955:user/release-keys
