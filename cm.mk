$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit device configuration
$(call inherit-product, device/zte/V55/device_V55.mk)

# Boot Animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 1280

-include vendor/cm/config/common_versions.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_V55
PRODUCT_DEVICE := V55
PRODUCT_MANUFACTURER := ZTE
PRODUCT_BRAND := ZTE 
PRODUCT_MODEL := Optik
PRODUCT_CHARACTERISTICS := tablet
