# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)


#Enabling Ring Tones
include frameworks/base/data/sounds/OriginalAudio.mk

#$(call inherit-product, device/common/gps/gps_eu_supl.mk)
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel


PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := V11A
PRODUCT_DEVICE := V11A
PRODUCT_BOARD := V11A
PRODUCT_MANUFACTURER := ZTE
PRODUCT_BRAND := ZTE 
PRODUCT_MODEL := SmartTab10