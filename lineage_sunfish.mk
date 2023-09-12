#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/sunfish/aosp_sunfish.mk)

include device/google/sunfish/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4a
PRODUCT_NAME := lineage_sunfish

# AlphaDroid
ALPHA_BUILD_PACKAGE := vanilla
ALPHA_BUILD_TYPE := OFFICIAL
ALPHA_MAINTAINER := F1a5H

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Device config
TARGET_DISABLE_EPPE := true
TARGET_ENABLE_BLUR := true
TARGET_ENABLE_PIXEL_GBOARD_PADDINGS := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USE_GOOGLE_TELEPHONY := true
TARGET_USE_PIXEL_FINGERPRINT := false
#TARGET_INCLUDE_PIXEL_FRAMEWORK := ?

# GAPPS
WITH_GAPPS := false
TARGET_INCLUDE_GOOGLE_APP := false
TARGET_INCLUDE_GOOGLE_CALCULATOR := false
TARGET_INCLUDE_GOOGLE_CALENDAR := false
TARGET_INCLUDE_GOOGLE_CHROME := false
TARGET_INCLUDE_GOOGLE_DESKCLOCK := false
TARGET_INCLUDE_GOOGLE_DRIVE := false
TARGET_INCLUDE_GMAIL := false
TARGET_INCLUDE_GOOGLE_MAPS := false
TARGET_INCLUDE_GOOGLE_PHOTOS := false
TARGET_INCLUDE_GOOGLE_SETUP := false

# Debugging
TARGET_INCLUDE_MATLOG := true
TARGET_DEFAULT_ADB_ENABLED := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=sunfish \
    PRIVATE_BUILD_DESC="sunfish-user 13 TQ3A.230805.001 10316531 release-keys"

BUILD_FINGERPRINT := google/sunfish/sunfish:13/TQ3A.230805.001/10316531:user/release-keys

$(call inherit-product, vendor/google/sunfish/sunfish-vendor.mk)
