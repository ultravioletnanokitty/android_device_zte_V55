 ##### Board configuration for ZTE V55/Optik #####
 ### Copyright nobody because it's a fucking   ###
 ### Makefile and it's ridiculous to copyright ###
 ### such a document.            --ultraviolet ###
 #################################################

$(call inherit-product, device/zte/smarttab-common/device_common.mk)

TARGET_BOOTLOADER_BOARD_NAME := V55
TARGET_KERNEL_CONFIG := v55_defconfig 
