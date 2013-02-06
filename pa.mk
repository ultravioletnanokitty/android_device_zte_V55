# Check for target product
ifeq (pa_V55,$(TARGET_PRODUCT))
 
# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_xhdpi
 
# include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk
 
# Inherit CM device configuration
$(call inherit-product, device/zte/V55/cm.mk)
 
PRODUCT_NAME := pa_V55
 
GET_VENDOR_PROPS := $(shell vendor/pa/tools/getvendorprops.py $(PRODUCT_NAME))
 
endif
