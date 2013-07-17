# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#
# This file is the build configuration for a full Android
# build for maguro hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and maguro, hence its name.
#
#
 
# Torch
PRODUCT_PACKAGES := \
    Torch

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

ifneq ($(TARGET_BUILD_VARIANT),codefirex)
# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml
else

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cfx/config/gsm.mk)

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/cfx/prebuilt/common/bootanimation/720.zip:system/media/bootanimation.zip

# Inherit some common CFX stuff.
$(call inherit-product, vendor/cfx/config/common_full_phone.mk)
endif

# Resources
$(call inherit-product, device/sony/common/resources-xhdpi.mk)

# Inherit from aoba device
$(call inherit-product, device/sony/aoba/aoba.mk)

# Aoba vendor blobs
$(call inherit-product-if-exists, vendor/sony/aoba/aoba-vendor.mk)

# Enhanced NFC - not yet present in CFX
#$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_aoba
PRODUCT_DEVICE := aoba
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := Xperia ion

# Boot Animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LT28h_1267-9107 BUILD_FINGERPRINT=SEMC/LT28h_1267-9107/LT28h:4.0.4/6.1.E.3.7/-PN-zw:user/release-keys PRIVATE_BUILD_DESC="LT28h-user 4.0.4 6.1.E.3.7 -PN-zw test-keys"
