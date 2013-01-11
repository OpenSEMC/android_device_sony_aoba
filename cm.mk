$(call inherit-product, device/sony/aoba/full_aoba.mk)

# Inherit CM common GSM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Boot Animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LT28h_1267-9107 BUILD_FINGERPRINT=SEMC/LT28h_1267-9107/LT28h:4.0.4/6.1.E.3.7/-PN-zw:user/release-keys PRIVATE_BUILD_DESC="LT28h-user 4.0.4 6.1.E.3.7 -PN-zw test-keys"

PRODUCT_NAME := cm_aoba
PRODUCT_DEVICE := aoba
