LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

$(call inherit-product, device/samsung/d2refreshspr/full_d2refreshspr.mk)

# Inherit device common stuff specific to TO
$(call inherit-product, vendor/to/device/samsung/d2-common/to.mk)

# Enhanced NFC
$(call inherit-product, vendor/to/config/nfc_enhanced.mk)

# Inherit some common TO stuff.
$(call inherit-product, vendor/to/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=d2refreshspr \
    TARGET_DEVICE=d2refreshspr \
    BUILD_FINGERPRINT="samsung/d2lterefreshspr/d2lterefreshspr:4.4.2/KOT49H/L710TVPU0ANF4:user/release-keys" \
    PRIVATE_BUILD_DESC="d2lterefreshspr-user 4.4.2 KOT49H L710TVPU0ANF4 release-keys"

PRODUCT_NAME := to_d2refreshspr
PRODUCT_DEVICE := d2refreshspr
