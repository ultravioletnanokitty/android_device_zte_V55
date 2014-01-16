 ####### Device Makefile for ZTE V55/Optik #######
 ### Copyright nobody because it's a fucking   ###
 ### Makefile and it's ridiculous to copyright ###
 ### such a document.            --ultraviolet ###
 #################################################

$(call inherit-product, device/zte/smarttab-common/device_common.mk)
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)
$(call inherit-product, device/common/gps/gps_us_supl.mk)
 
# GPS
PRODUCT_PACKAGES += \
    gps.V55
