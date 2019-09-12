#
# Copyright (C) 2020-21 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

#
# All components inherited here go to system image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

#
# All components inherited here go to system_ext image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

#
# All components inherited here go to vendor image
#
# TODO(b/136525499): move *_vendor.mk into the vendor makefile later
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_vendor.mk)

# Inherit from X00P device
$(call inherit-product, device/asus/X00P/device.mk)

# Inherit PixelExperience stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# PixelExperience specifics
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 720
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false

# Device identifiers.
PRODUCT_DEVICE := X00P
PRODUCT_NAME := aosp_X00P
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_X00PD
PRODUCT_MANUFACTURER := asus
TARGET_VENDOR := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="WW_X00PD-user 8.0.0 OPR1.170623.032 15.00.1801.31 release-keys"

# BUILD_FINGERPRINT
BUILD_FINGERPRINT := asus/WW_X00PD/ASUS_X00P_2:8.0.0/OPR1.170623.032/15.00.1801.31:user/release-keys
