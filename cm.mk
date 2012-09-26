$(call inherit-product, device/sony/aoba/full_aoba.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Release name and versioning
PRODUCT_RELEASE_NAME := XperiaION-LT28h

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LT28h_1266-0792 BUILD_FINGERPRINT=SEMC/LT28h_1266-0792/LT28h:4.0.4/6.1.E.0.233/Fv9-zw:user/release-keys PRIVATE_BUILD_DESC="LT28h-user 4.0.4 6.1.E.0.233 Fv9-zw test-keys"

TARGET_BOOTANIMATION_NAME := vertical-720x1280

PRODUCT_NAME := cm_aoba
PRODUCT_DEVICE := aoba
