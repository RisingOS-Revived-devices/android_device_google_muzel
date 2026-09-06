#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-FileCopyrightText: The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
DEVICE_CODENAME := frankel
DEVICE_PATH := device/google/muzel
VENDOR_PATH := vendor/google/frankel
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_$(DEVICE_CODENAME)
PRODUCT_SYSTEM_BRAND := google
PRODUCT_SYSTEM_MANUFACTURER := Google
PRODUCT_SYSTEM_NAME := generic_system_google

# Boot animation
TARGET_SCREEN_HEIGHT := 2424
TARGET_SCREEN_WIDTH := 1080

RISING_MAINTAINER=EliteDarkKaiser
RISING_VERSION := 9

# Disable/enable blur support, false by default
TARGET_ENABLE_BLUR := true

# Whether to ship aperture camera, false by default
PRODUCT_NO_CAMERA := true

# GMS build flags, true by default
# Ship with GMS packages, replaces default AOSP packages with Google manufactured packages.
WITH_GMS := true

# Addons
TARGET_HAS_UDFPS := true
TARGET_PREBUILT_BCR := true

# Launcher Flags
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# Enables Google Face Unlock (GFU)
TARGET_SUPPORTS_GFU := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Google Tensor G5" \
    RisingMaintainer="EliteDarkKaiser" \
    BuildDesc="frankel-user 17 CP2A.260805.005 15828068 release-keys" \
    BuildFingerprint=google/frankel/frankel:17/CP2A.260805.005/15828068:user/release-keys \
    BuildSystemFingerprint=google/generic_system_google/generic:17/CP2A.260805.005/15828068:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)
