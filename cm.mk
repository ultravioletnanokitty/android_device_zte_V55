$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/zte/V71A/full_V71A.mk)

# Boot Animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 1280

-include vendor/cm/config/common_versions.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_V71A
PRODUCT_DEVICE := V71A
PRODUCT_MANUFACTURER := ZTE
PRODUCT_BRAND := ZTE 
PRODUCT_MODEL := SmartTab 7
PRODUCT_CHARACTERISTICS := tablet
