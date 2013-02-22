##### Board configuration for ZTE V55/Optik #####
### Copyright nobody because it's a fucking   ###
### Makefile and it's ridiculous to copyright ###
### such a document.            --ultraviolet ###
#################################################

TARGET_SPECIFIC_HEADER_PATH := device/zte/V55/include

# CPU/Board Architecture
TARGET_BOARD_PLATFORM := msm8660
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_EXTRA_CFLAGS += $(call cc-option,-mtune=cortex-a9,$(call cc-option,-mtune=cortex-a8)) $(call cc-option,-mcpu=cortex-a9,$(call cc-option,-mcpu=cortex-a8))

# GPU Architecture
USE_OPENGL_RENDERER := true
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
BOARD_USES_ADRENO_200 := true
TARGET_USES_PMEM := true
BOARD_USE_QCOM_PMEM := true
TARGET_HARDWARE_3D := true
TARGET_HAVE_BYPASS := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_OVERLAY := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_USES_GENLOCK := true

# FPU Compile Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := V55

# init.rc
TARGET_PROVIDES_INIT_RC := false

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# Stagefright
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_DECODERS
TARGET_HAS_S3D_SUPPORT := true
WEBCORE_INPAGE_VIDEO := true
TARGET_HAVE_TSLIB := false

# Camera (Broken anyway, so commented)
#COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB
#BOARD_NEEDS_MEMORYHEAPPMEM := true
#USE_CAMERA_STUB := false

# Graphics
BOARD_EGL_CFG := vendor/zte/V55/proprietary/lib/egl/egl.cfg
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128
COMMON_GLOBAL_CFLAGS += -DFORCE_CPU_UPLOAD -DQCOM_ICS_COMPAT -DQCOM_NO_SECURE_PLAYBACK -DQCOM_NO_DMX_SUPPORT -DNO_HW_VSYNC
COMMON_GLOBAL_CFLAGS += -DQCOM_ACDB_ENABLED -DLEGACY_QCOM_VOICE -DPOLL_CALL_STATE -DUSE_QMI
TARGET_NO_HW_VSYNC := true
WITH_DEXPREOPT := false 
LOCAL_DEX_PREOPT := false

# HDMI
TARGET_QCOM_HDMI_OUT := true
TARGET_HAVE_HDMI_OUT := true

# Browser
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8

# GPS
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
    
# Audio
#BOARD_USES_QCOM_LPA := true
#BOARD_USES_QCOM_AUDIO_V2 := true
#TARGET_PROVIDES_LIBAUDIO := true
#QCOM_ACDB_ENABLED := true
#QCOM_VOIP_ENABLED := true
#QCOM_TUNNEL_LPA_ENABLED := true
#QCOM_ANC_HEADSET_ENABLED := true
#LEGACY_QCOM_VOICE :=true

# Wi-Fi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
#BOARD_HOSTAPD_DRIVER := WEXT
#BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
BOARD_WLAN_DEVICE_REV := bcm4330_b2
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_NAME := "dhd"
WIFI_AP_DRIVER_MODULE_PATH := "/system/lib/modules/dhd.ko"
WIFI_AP_DRIVER_MODULE_NAME := "dhd"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/wifi/bcm4330_b2.bin"
#WIFI_DRIVER_FW_PATH_P2P := "/system/etc/wifi/bcm4330_p2p_b2.bin"
#WIFI_DRIVER_FW_PATH_AP := "/system/etc/wifi/fw_bcm4330_apsta_b2.bin"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/wifi/bcm4330_b2.bin nvram_path=/persist/zte/wifi/bcm.txt"
#WIFI_AP_DRIVER_MODULE_ARG := "firmware_path=/system/etc/wifi/fw_bcm4330_apsta_b2.bin nvram_path=/persist/zte/wifi/bcm.txt"
CONFIG_DRIVER_WEXT := true
WIFI_BAND := 802_11_ABGN
BOARD_WEXT_NO_COMBO_SCAN := true
BOARD_NETWORK_INTERFACES_DIR := "/sys/devices/virtual/net"
PRODUCT_WIRELESS_TOOLS := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Sensors
BOARD_INVENSENSE_APPLY_COMPASS_NOISE_FILTER := true

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 681574400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 14285799424
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_MISC_PARTITION := true

# Kernel Config
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom vmalloc=512M kgsl.ptcount=14
BOARD_KERNEL_BASE := 0x40200000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3
TARGET_KERNEL_SOURCE := kernel/zte/V55
TARGET_KERNEL_CONFIG := v55_jb_defconfig 

# SD Card		
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p1
BOARD_USES_MMCUTILS := true

# Insecure Boot
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.adb.enable=1

# Vold/UMS Stuff
BOARD_VOLD_MAX_PARTITIONS := 30
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/usb_mass_storage/lun0/file"
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"

# Recovery (TWRP)

TARGET_PREBUILT_RECOVERY_KERNEL := device/zte/V55/recovery/kernel
TARGET_PROVIDES_RECOVERY_INIT_RC := true
TARGET_RECOVERY_INITRC := device/zte/V55/recovery/init.rc
TARGET_RECOVERY_GUI := true
DEVICE_RESOLUTION := 1280x800
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_CUSTOM_GRAPHICS := ../../../device/zte/V55/recovery/minui/graphics.c
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/storage/sdcard1"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard1"
TW_FLASH_FROM_STORAGE := true 
TW_DEFAULT_EXTERNAL_STORAGE := true
RECOVERY_SDCARD_ON_DATA := true
TW_NO_USB_STORAGE := true
BOARD_HAS_NO_REAL_SDCARD := true

#SP1_NAME := "modem"
#SP1_DISPLAY_NAME := "NON-HLOS (modem Firmware)"
#SP1_BACKUP_METHOD := image
#SP1_MOUNTABLE := 1
#SP2_NAME := "persist"
#SP2_BACKUP_METHOD := image
#SP2_MOUNTABLE := 1
#SP3_NAME := "aboot"
#SP3_DISPLAY_NAME := "Appsboot"
#SP3_BACKUP_METHOD := image
#SP3_MOUNTABLE := 1
