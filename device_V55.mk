# Overlay
DEVICE_PACKAGE_OVERLAYS := device/zte/V55/overlay

# DPI
PRODUCT_AAPT_CONFIG := hdpi xhdpi

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm8660 \
    audio.primary.msm8660 \
    libaudioutils

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8660 \
    gralloc.msm8660 \
    hwcomposer.msm8660 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer

# OMX
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libI420colorconvert \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libstagefrighthw 

# HDMI
PRODUCT_PACKAGES += \
    hdmid

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# feature permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \

# kl keylayouts
PRODUCT_COPY_FILES += \
	device/zte/V55/input/matrix-keypad.kl:system/usr/keylayout/matrix-keypad.kl \
	device/zte/V55/input/pmic8058_pwrkey.kl:system/usr/keylayout/pmic8058_pwrkey.kl \
# these don't seem to be particularly relevant
#   device/zte/V55/input/8660_handset.kl:system/usr/keylayout/8660_handset.kl \
#   device/zte/V55/input/ffa-keypad.kl:system/usr/keylayout/ffa-keypad.kl \
#   device/zte/V55/input/fluid-keypad.kl:system/usr/keylayout/fluid-keypad.kl \


# idc files
PRODUCT_COPY_FILES += \
	device/zte/V55/input/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    device/zte/V55/input/icudt44l.dat:system/usr/icu/icudt44l.dat

# Audio files
PRODUCT_COPY_FILES += \
	vendor/zte/V55/proprietary/lib/libaudioalsa.so:obj/lib/libaudioalsa.so \
	vendor/zte/V55/proprietary/lib/libacdbloader.so:obj/lib/libacdbloader.so \
	vendor/zte/V55/proprietary/lib/libacdbmapper.so:obj/lib/libacdbmapper.so \
	vendor/zte/V55/proprietary/lib/libaudcal.so:obj/lib/libaudcal.so \
	vendor/zte/V55/proprietary/lib/libaudio.so:obj/lib/libaudio.so \
	vendor/zte/V55/proprietary/lib/libdiag.so:obj/lib/libdiag.so \
	vendor/zte/V55/proprietary/lib/libaudiopolicy.so:obj/lib/libaudiopolicy.so \
	vendor/zte/V55/proprietary/lib/libaudcal.so:system/lib/libaudcal.so \
	vendor/zte/V55/proprietary/lib/libacdbmapper.so:system/lib/libacdbmapper.so \
	vendor/zte/V55/proprietary/lib/libacdbloader.so:system/lib/libacdbloader.so \
	vendor/zte/V55/proprietary/lib/libaudioalsa.so:system/lib/libaudioalsa.so \
	vendor/zte/V55/proprietary/lib/libdiag.so:system/lib/libdiag.so \
#	vendor/zte/V55/proprietary/lib/libaudio.so:system/lib/libaudio.so \
#	vendor/zte/V55/proprietary/lib/libaudiopolicy.so:system/lib/libaudiopolicy.so \
	
# media codecs list
PRODUCT_COPY_FILES += device/zte/V55/config/media_codecs.xml:system/etc/media_codecs.xml 

# ramdisk
PRODUCT_COPY_FILES += \
	device/zte/V55/ramdisk/initlogo.rle:root/initlogo.rle \
	device/zte/V55/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc \
	device/zte/V55/ramdisk/init.qcom.rc:root/init.qcom.rc \
	device/zte/V55/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
	device/zte/V55/ramdisk/V55.fstab:root/V55.fstab
	
# fstab files
PRODUCT_COPY_FILES += \
	device/zte/V55/vold.fstab:system/etc/vold.fstab \
	device/zte/V55/recovery.fstab:recovery/root/etc/recovery.fstab 

#adreno200 	
PRODUCT_COPY_FILES += \
    vendor/zte/V55/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    vendor/zte/V55/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    vendor/zte/V55/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    vendor/zte/V55/proprietary/lib/egl/libGLESv2S3D_adreno200.so:system/lib/egl/libGLESv2S3D_adreno200.so \
    vendor/zte/V55/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
	vendor/zte/V55/proprietary/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
	vendor/zte/V55/proprietary/lib/libgsl.so:system/lib/libgsl.so \
	vendor/zte/V55/proprietary/lib/libC2D2.so:system/lib/libC2D2.so \
	vendor/zte/V55/proprietary/lib/libOpenVG.so:system/lib/libOpenVG.so \
	vendor/zte/V55/proprietary/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
	vendor/zte/V55/proprietary/lib/libc2d2_z180.so:system/lib/libc2d2_z180.so \
#	vendor/zte/V55/proprietary/lib/liboverlay.so:system/lib/liboverlay.so \

#firmware 	
PRODUCT_COPY_FILES += \
	vendor/zte/V55/proprietary/etc/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
	vendor/zte/V55/proprietary/etc/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
	vendor/zte/V55/proprietary/etc/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
	vendor/zte/V55/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
	vendor/zte/V55/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
	vendor/zte/V55/proprietary/etc/firmware/bcm.hcd:system/etc/firmware/bcm.hcd \
	vendor/zte/V55/proprietary/etc/firmware/dsps_fluid.b00:system/etc/firmware/dsps_fluid.b00 \
	vendor/zte/V55/proprietary/etc/firmware/dsps_fluid.b01:system/etc/firmware/dsps_fluid.b01 \
	vendor/zte/V55/proprietary/etc/firmware/dsps_fluid.b02:system/etc/firmware/dsps_fluid.b02 \
	vendor/zte/V55/proprietary/etc/firmware/dsps_fluid.b03:system/etc/firmware/dsps_fluid.b03 \
	vendor/zte/V55/proprietary/etc/firmware/dsps_fluid.mdt:system/etc/firmware/dsps_fluid.mdt \
	vendor/zte/V55/proprietary/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
	vendor/zte/V55/proprietary/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
	vendor/zte/V55/proprietary/etc/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw 

#Sensors
PRODUCT_COPY_FILES += \
	device/zte/V55/config/thermald.conf:system/etc/thermald.conf \
	vendor/zte/V55/proprietary/lib/libmpl_sys_jni.so:system/lib/libmpl_sys_jni.so \
	vendor/zte/V55/proprietary/lib/libmpl.so:system/lib/libmpl.so \
	vendor/zte/V55/proprietary/lib/libmllite.so:system/lib/libmllite.so \
	vendor/zte/V55/proprietary/lib/libmlplatform.so:system/lib/libmlplatform.so \
	vendor/zte/V55/proprietary/lib/hw/sensors.msm8660.so:system/lib/hw/sensors.msm8660.so \

#wifi
PRODUCT_COPY_FILES += \
	vendor/zte/V55/proprietary/etc/wifi/apsta_bcm4330_b2.bin:system/etc/wifi/apsta_bcm4330_b2.bin \
	vendor/zte/V55/proprietary/etc/wifi/bcm4330_b2.bin:system/etc/wifi/bcm4330_b2.bin \

#camera
#PRODUCT_COPY_FILES += \
#	vendor/zte/V55/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
#	vendor/zte/V55/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
#	vendor/zte/V55/proprietary/lib/libmmjpeg.so:obj/lib/libmmjpeg.so \
#   vendor/zte/V55/proprietary/lib/liboemcamera.so:obj/lib/liboemcamera.so \
#   vendor/zte/V55/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
#	vendor/zte/V55/proprietary/lib/libgemini.so:system/lib/libgemini.so \
#	vendor/zte/V55/proprietary/lib/libmmmpo.so:system/lib/libmmmpo.so \
#   vendor/zte/V55/proprietary/bin/v4l2-qcamera-app:system/bin/v4l2-qcamera-app \
#	vendor/zte/V55/proprietary/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
#	vendor/zte/V55/proprietary/bin/mm-qcamera-test:system/bin/mm-qcamera-test \
#	vendor/zte/V55/proprietary/bin/mm-mpo-enc-test:system/bin/mm-mpo-enc-test \
#	vendor/zte/V55/proprietary/bin/mm-qcamera-testsuite-client:system/bin/mm-qcamera-testsuite-client \
#	vendor/zte/V55/proprietary/lib/libcamera.so:obj/lib/libcamera.so \
#   vendor/zte/V55/proprietary/lib/libcamera.so:system/lib/libcamera.so \
#	vendor/zte/V55/proprietary/lib/hw/camera.msm8660.so:obj/lib/camera.msm8660.so \
#   vendor/zte/V55/proprietary/lib/hw/camera.msm8660.so:system/linitinitib/hw/camera.msm8660.so \


# location services
#PRODUCT_COPY_FILES += \
	vendor/zte/V55/proprietary/lib/libcommondefs.so:system/lib/libcommondefs.so \
    vendor/zte/V55/proprietary/lib/libwiperjni.so:system/lib/libwiperjni.so \
	vendor/zte/V55/proprietary/lib/libloc_api-rpc-qc.so:system/lib/libloc_api-rpc-qc.so \
    vendor/zte/V55/proprietary/lib/libloc_ext.so:system/lib/libloc_ext.so \
#   vendor/zte/V55/proprietary/lib/libtcpfinaggr.so:system/lib/libtcpfinaggr.so \

# Binary files
PRODUCT_COPY_FILES += \
	vendor/zte/V55/proprietary/bin/battery_charging:system/bin/battery_charging \
	vendor/zte/V55/proprietary/bin/bridgemgrd:system/bin/bridgemgrd \
	vendor/zte/V55/proprietary/bin/port-bridge:system/bin/port-bridge \
	vendor/zte/V55/proprietary/bin/qmiproxy:system/bin/qmiproxy \
	vendor/zte/V55/proprietary/bin/ds_fmc_appd:system/bin/ds_fmc_appd \
	vendor/zte/V55/proprietary/bin/qmuxd:system/bin/qmuxd \
	vendor/zte/V55/proprietary/bin/dcvsd:system/bin/dcvsd \
	vendor/zte/V55/proprietary/bin/rmt_storage:system/bin/rmt_storage \
	vendor/zte/V55/proprietary/bin/usbhub:system/bin/usbhub \
	vendor/zte/V55/proprietary/bin/wiperiface:system/bin/wiperiface \
	vendor/zte/V55/proprietary/bin/usbhub_init:system/bin/usbhub_init \
	vendor/zte/V55/proprietary/bin/radish:system/bin/radish \
	vendor/zte/V55/proprietary/bin/hdmid:system/bin/hdmid \
#	vendor/zte/V55/proprietary/bin/thermald:system/bin/thermald \
#	vendor/zte/V55/proprietary/bin/mpdecision:system/bin/mpdecision \

$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)
