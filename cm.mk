# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Release name
PRODUCT_RELEASE_NAME := us9230e1

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, build/target/product/aosp_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/xolo/us9230e1/us9230e1.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := us9230e1
PRODUCT_NAME := cm_us9230e1
PRODUCT_BRAND := XOLO
PRODUCT_MODEL := XOLO Play T1000
PRODUCT_MANUFACTURER := XOLO
