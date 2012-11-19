
$(call inherit-product, device/common/gps/gps_eu_supl.mk)
#$(call inherit-product, device/zte/V11A/libcamera/Android.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/zte/V11A/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif
PRODUCT_COPY_FILES += \
$(LOCAL_KERNEL):kernel \

PRODUCT_NAME := cm_V11A
PRODUCT_DEVICE := V11A
PRODUCT_MANUFACTURER := ZTE
PRODUCT_BRAND :=Vodafone 
PRODUCT_MODEL := SmartTab10
PRODUCT_BOARD := V11A
PRODUCT_CHARACTERISTICS :=tablet,nosdcard
DEVICE_PACKAGE_OVERLAYS := device/zte/smarttab_common/overlay
PRODUCT_TAGS += dalvik.gc.type-precise
#shell_ash
PRODUCT_PROPERTY_OVERRIDES+= dalvik.vm.execution-mode=int:jit \
	ro.telephony.call_ring.multiple=false \
	ro.telephony.call_ring.delay=5000 \
	dalvik.vm.dexopt-flags=m=y \
	debug.enabletr=true \
	persist.sys.use_dithering=0 \
	ro.com.google.locationfeatures=1 \
	mobiledata.interfaces = eth0,rmnet0
#,u=n,v=a,o=v 
# Provides overrides to configure the Dalvik heap for a standard tablet device.

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=5m \
    dalvik.vm.heapgrowthlimit=48m \
    dalvik.vm.heapsize=256m

#### Goo Manager support
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=joestone \
    ro.goo.board=$(subst full_,,$(PRODUCT_DEVICE)) \
	ro.goo.rom=CM10_SmartTab10 \
	ro.goo.version=$(shell date +%Y%m%d )
PRODUCT_COPY_FILES += \
    device/zte/smarttab_common/proprietary/app/GooManager_2.1.2.apk:system/app/GooManager_2.1.2.apk \

	
PRODUCT_LOCALES += hdpi
PRODUCT_LOCALES += xhdpi
#PRODUCT_LOCALES += nodpi

PRODUCT_AAPT_CONFIG := hdpi xhdpi 

#LLVM for RenderScript
#$(call inherit-product, external/llvm/llvm-select.mk)
LLVM_ROOT_PATH := external/llvm

PRODUCT_PACKAGES += audio.primary.msm8660
PRODUCT_PACKAGES += audio_policy.msm8660
PRODUCT_PACKAGES += audio_policy.conf
PRODUCT_PACKAGES += copybit.msm8660
PRODUCT_PACKAGES += gralloc.msm8660
PRODUCT_PACKAGES += lights.msm8660
PRODUCT_PACKAGES += hwcomposer.msm8660
PRODUCT_PACKAGES += libmemalloc
PRODUCT_PACKAGES += libstagefrighthw
PRODUCT_PACKAGES += libaudioutils
PRODUCT_PACKAGES += gps.default

#MM_CORE
PRODUCT_PACKAGES += libmm-omxcore
PRODUCT_PACKAGES += libOmxCore
PRODUCT_PACKAGES += libOmxAacEnc
PRODUCT_PACKAGES += libOmxAmrEnc
PRODUCT_PACKAGES += libOmxEvrcEnc
PRODUCT_PACKAGES += libOmxQcelp13Enc

#MM_VIDEO
PRODUCT_PACKAGES += ast-mm-vdec-omx-test
PRODUCT_PACKAGES += libdivxdrmdecrypt
PRODUCT_PACKAGES += liblasic
PRODUCT_PACKAGES += libOmxVdec
PRODUCT_PACKAGES += libOmxVenc
PRODUCT_PACKAGES += libOpenMAXAL
PRODUCT_PACKAGES += libOpenSLES
PRODUCT_PACKAGES += libOmxVidEnc
PRODUCT_PACKAGES += mm-vdec-omx-property-mgr
PRODUCT_PACKAGES += mm-vdec-omx-test
PRODUCT_PACKAGES += mm-venc-omx-test
PRODUCT_PACKAGES += mm-venc-omx-test720p
PRODUCT_PACKAGES += mm-video-driver-test
PRODUCT_PACKAGES += mm-video-encdrv-test
PRODUCT_PACKAGES += libmmjpeg_interface 
PRODUCT_PACKAGES += libcamera
#ash shell
PRODUCT_PACKAGES += liblinenoise

# Sensors
PRODUCT_PACKAGES += libinvensense_hal


PRODUCT_PACKAGES += \
    AccountAndSyncSettings \
    DeskClock \
    AlarmProvider \
    Bluetooth \
	busybox \
	applypatch \
    Calculator \
    LegacyCamera \
    Calendar \
    CertInstaller \
    DrmProvider \
    Email \
    Gallery2 \
    LatinIME \
    Launcher2 \
    Mms \
    Music \
	MusicFX \
    Phone \
    Provision \
    Protips \
    QuickSearchBox \
	hcitool \
	brcm_patchram_plus \
    Settings \
    Sync \
    SystemUI \
    Updater \
    CalendarProvider \
    SyncProvider \
    IM \
    VoiceDialer \
    hciconfig \
	hciattach \
	CMParts \
    CMScreenshot \
    CMStats \
	libwpa_client \
	hostapd \
	hostapd_cli \
	Superuser \
	hdmid \
	libinvensense_hal \
	libmllite \
	libmlplatform \
	camera.msm8660 \
	audio.a2dp.default \
	audio.usb.default \
    VideoEditor \
	libI420colorconvert \
#	rild \
#	libril \
#	libreference-ril \

# Live Wallpapers
PRODUCT_PACKAGES += \
        librs_jni \
		CMWallpapers \
        LiveWallpapers \
        VisualizationWallpapers \
        LiveWallpapersPicker \

#Theme package
PRODUCT_PACKAGES += \
	ThemeManager \
	ThemeChooser \
	com.tmobile.themes \
	Androidian \
	Cyanbread
		
# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
	com.android.future.usb.accessory \
    setup_fs

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
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
	device/zte/smarttab_common/proprietary/etc/permissions/com.invensense.android.hardware.xml:/system/etc/permissions/com.invensense.android.hardware.xml \
	device/zte/smarttab_common/proprietary/etc/permissions/com.google.android.media.effects.xml:/system/etc/permissions/com.google.android.media.effects.xml \
	device/zte/smarttab_common/proprietary/etc/permissions/com.google.android.maps.xml:/system/etc/permissions/com.google.android.maps.xml \
	#frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	#frameworks/native/data/etc/com.tmobile.software.themes.xml:/system/etc/permissions/com.tmobile.software.themes.xml \
	#frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \

	
# kcm keymaps
PRODUCT_COPY_FILES += \
    device/zte/smarttab_common/proprietary/usr/keychars/Generic.kcm:system/usr/keylayout/Generic.kcm \
    device/zte/smarttab_common/proprietary/usr/keychars/qwerty2.kcm:system/usr/keylayout/qwerty2.kcm \
    device/zte/smarttab_common/proprietary/usr/keychars/qwerty.kcm:system/usr/keylayout/qwerty.kcm \
    device/zte/smarttab_common/proprietary/usr/keychars/Virtual.kcm:system/usr/keylayout/Virtual.kcm

# kl keylayouts
PRODUCT_COPY_FILES += \
    device/zte/smarttab_common/proprietary/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
	device/zte/smarttab_common/proprietary/usr/keylayout/matrix-keypad.kl:system/usr/keylayout/matrix-keypad.kl \
	device/zte/smarttab_common/proprietary/usr/keylayout/pmic8058_pwrkey.kl:system/usr/keylayout/pmic8058_pwrkey.kl \
    device/zte/smarttab_common/proprietary/usr/keylayout/8660_handset.kl:system/usr/keylayout/8660_handset.kl \
    device/zte/smarttab_common/proprietary/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/zte/smarttab_common/proprietary/usr/keylayout/ffa-keypad.kl:system/usr/keylayout/ffa-keypad.kl \
    device/zte/smarttab_common/proprietary/usr/keylayout/fluid-keypad.kl:system/usr/keylayout/fluid-keypad.kl \
    device/zte/smarttab_common/proprietary/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl
	
# idc files
PRODUCT_COPY_FILES += \
    device/zte/smarttab_common/proprietary/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/zte/smarttab_common/proprietary/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
	device/zte/smarttab_common/proprietary/usr/idc/qwerty.idc:system/usr/idc/atmel-touchscreen.idc \
    device/zte/smarttab_common/proprietary/usr/icu/icudt44l.dat:system/usr/icu/icudt44l.dat
	
# Audio files
PRODUCT_COPY_FILES += \
	device/zte/smarttab_common/proprietary/lib/libaudioalsa.so:system/lib/libaudioalsa.so \
	device/zte/smarttab_common/proprietary/lib/libaudioalsa.so:obj/lib/libaudioalsa.so \
	device/zte/smarttab_common/proprietary/lib/libacdbloader.so:system/lib/libacdbloader.so \
	device/zte/smarttab_common/proprietary/lib/libacdbloader.so:obj/lib/libacdbloader.so \
	device/zte/smarttab_common/proprietary/lib/libacdbmapper.so:system/lib/libacdbmapper.so \
	device/zte/smarttab_common/proprietary/lib/libacdbmapper.so:obj/lib/libacdbmapper.so \
	device/zte/smarttab_common/proprietary/lib/libaudcal.so:obj/lib/libaudcal.so \
	device/zte/smarttab_common/proprietary/lib/libaudio.so:obj/lib/libaudio.so \
	device/zte/smarttab_common/proprietary/lib/libdiag.so:obj/lib/libdiag.so \
	device/zte/smarttab_common/proprietary/lib/libaudcal.so:system/lib/libaudcal.so \
	device/zte/smarttab_common/proprietary/lib/libaudio.so:system/lib/libaudio.so \
	device/zte/smarttab_common/proprietary/lib/libaudiopolicy.so:system/lib/libaudiopolicy.so \
	device/zte/smarttab_common/proprietary/lib/libaudiopolicy.so:obj/lib/libaudiopolicy.so \
	device/zte/smarttab_common/proprietary/lib/libdiag.so:system/lib/libdiag.so \
	device/zte/smarttab_common/proprietary/etc/media_profiles.xml:system/etc/media_profiles.xml \
	device/zte/smarttab_common/proprietary/etc/media_codecs.xml:system/etc/media_codecs.xml 

#Bluetooth setup
PRODUCT_COPY_FILES += \
	device/zte/smarttab_common/proprietary/bin/brcm_patchram_plus:system/bin/brcm_patchram_plus \
#	device/zte/smarttab_common/proprietary/etc/bluetooth/input.conf:system/etc/bluetooth/input.conf \
#	device/zte/smarttab_common/proprietary/etc/bluetooth/main.conf:system/etc/bluetooth/main.conf \
#	device/zte/smarttab_common/proprietary/etc/bluetooth/network.conf:system/etc/bluetooth/network.conf \
#	device/zte/smarttab_common/proprietary/lib/bluez-plugin/audio.so:system/lib/bluez-plugin/audio.so \
#	device/zte/smarttab_common/proprietary/lib/bluez-plugin/input.so:system/lib/bluez-plugin/input.so \
#	device/zte/smarttab_common/proprietary/lib/bluez-plugin/network.so:system/lib/bluez-plugin/network.so \
#	device/zte/smarttab_common/proprietary/lib/libbluedroid.so:system/lib/libbluedroid.so \
#	device/zte/smarttab_common/proprietary/lib/libbluetooth.so:system/lib/libbluetooth.so \
#	device/zte/smarttab_common/proprietary/lib/libbluetoothd.so:system/lib/libbluetoothd.so \
#	device/zte/smarttab_common/proprietary/lib/libdbus.so:system/lib/libdbus.so \
#	device/zte/smarttab_common/proprietary/bin/bluetoothd:system/bin/bluetoothd \
#	device/zte/smarttab_common/proprietary/bin/hciattach:system/bin/hciattach \
#	device/zte/smarttab_common/proprietary/bin/sdptool:system/bin/sdptool \
	



	
# GSM files
PRODUCT_COPY_FILES += \
	device/zte/smarttab_common/proprietary/lib/libril-qc-qmi-1.so:system/lib/libril-qc-qmi-1.so \
	device/zte/smarttab_common/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
	device/zte/smarttab_common/proprietary/lib/libqmi.so:system/lib/libqmi.so \
	device/zte/smarttab_common/proprietary/lib/libdsutils.so:system/lib/libdsutils.so \
	device/zte/smarttab_common/proprietary/lib/libqmiservices.so:system/lib/libqmiservices.so \
	device/zte/smarttab_common/proprietary/lib/libidl.so:system/lib/libidl.so \
	device/zte/smarttab_common/proprietary/lib/libdsi_netctrl.so:system/lib/libdsi_netctrl.so \
	device/zte/smarttab_common/proprietary/lib/libnetmgr.so:system/lib/libnetmgr.so \
	device/zte/smarttab_common/proprietary/lib/libqdp.so:system/lib/libqdp.so \
	device/zte/smarttab_common/proprietary/lib/libtime_genoff.so:system/lib/libtime_genoff.so \
	device/zte/smarttab_common/proprietary/bin/ATFWD-daemon:system/bin/ATFWD-daemon \
	device/zte/smarttab_common/proprietary/bin/netmgrd:system/bin/netmgrd \
	device/zte/smarttab_common/proprietary/lib/libreference-ril.so:system/lib/libreference-ril.so \
	device/zte/smarttab_common/proprietary/lib/libreference-ril.so:obj/lib/libreference-ril.so \
	device/zte/smarttab_common/proprietary/lib/libril.so:system/lib/libril.so \
	device/zte/smarttab_common/proprietary/lib/libril.so:obj/lib/libril.so \
	device/zte/smarttab_common/proprietary/bin/rild:system/bin/rild \
	device/zte/smarttab_common/proprietary/bin/rild:obj/bin/rild \
#	device/zte/smarttab_common/proprietary/etc/permissions/qcnvitems.xml:/system/etc/permissions/qcnvitems.xml \
#	device/zte/smarttab_common/proprietary/etc/permissions/qcrilhook.xml:/system/etc/permissions/qcrilhook.xml \
#	device/zte/smarttab_common/proprietary/framework/qcnvitems.jar:system/framework/qcnvitems.jar \
#	device/zte/smarttab_common/proprietary/framework/qcrilhook.jar:system/framework/qcrilhook.jar \


	
#root dir
PRODUCT_COPY_FILES += \
	device/zte/smarttab_common/proprietary/root/initlogo.rle:root/initlogo.rle \
	device/zte/smarttab_common/proprietary/root/sbin/resize2fs:root/sbin/resize2fs \
	device/zte/smarttab_common/proprietary/root/init.rc:root/init.rc \
	device/zte/smarttab_common/proprietary/root/ueventd.rc:root/ueventd.rc \
	device/zte/smarttab_common/proprietary/root/init.target.rc:root/init.target.rc \
	device/zte/smarttab_common/proprietary/root/init.qcom.sh:root/init.qcom.sh \
	device/zte/smarttab_common/proprietary/root/init.qcom.rc:root/init.qcom.rc \
	device/zte/smarttab_common/proprietary/root/init:root/init \
	device/zte/smarttab_common/proprietary/root/ueventd.rc:recovery/root/ueventd.rc \
	device/zte/smarttab_common/proprietary/root/init:recovery/root/init \
	device/zte/smarttab_common/recovery/init.rc:recovery/root/init.rc \
	device/zte/smarttab_common/proprietary/bin/sdcard:recovery/root/sbin/sdcard \

	
# VOLD files
PRODUCT_COPY_FILES += \
	device/zte/smarttab_common/proprietary/etc/vold.fstab:system/etc/vold.fstab \
	device/zte/smarttab_common/recovery/recovery.fstab:recovery/root/etc/recovery.fstab 

# usb profiles
#PRODUCT_COPY_FILES += \
#    device/zte/V11A/init.smarttab.usb.rc:root/init.smarttab.usb.rc
	
#adreno200 	
PRODUCT_COPY_FILES += \
    device/zte/smarttab_common/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
	device/zte/smarttab_common/proprietary/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
    device/zte/smarttab_common/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/zte/smarttab_common/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/zte/smarttab_common/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
	device/zte/smarttab_common/proprietary/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
	device/zte/smarttab_common/proprietary/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
	device/zte/smarttab_common/proprietary/lib/libgsl.so:system/lib/libgsl.so \
	device/zte/smarttab_common/proprietary/lib/libC2D2.so:system/lib/libC2D2.so \
	device/zte/smarttab_common/proprietary/lib/libOpenVG.so:system/lib/libOpenVG.so \
	device/zte/smarttab_common/proprietary/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
#	device/zte/smarttab_common/proprietary/lib/liboverlay.so:system/lib/liboverlay.so \
#	device/zte/smarttab_common/proprietary/lib/libc2d2_z180.so:system/lib/libc2d2_z180 \

	
#firmware 	
PRODUCT_COPY_FILES += \
	device/zte/smarttab_common/proprietary/etc/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
	device/zte/smarttab_common/proprietary/etc/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
	device/zte/smarttab_common/proprietary/etc/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
	device/zte/smarttab_common/proprietary/etc/firmware/a300_pfp.fw:system/etc/firmware/a300_pfp.fw \
	device/zte/smarttab_common/proprietary/etc/firmware/a300_pm4.fw:system/etc/firmware/a300_pm4.fw \
	device/zte/smarttab_common/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
	device/zte/smarttab_common/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
	device/zte/smarttab_common/proprietary/etc/firmware/bcm.hcd:system/etc/firmware/bcm.hcd \
	device/zte/smarttab_common/proprietary/etc/firmware/dsps_fluid.b00:system/etc/firmware/dsps_fluid.b00 \
	device/zte/smarttab_common/proprietary/etc/firmware/dsps_fluid.b01:system/etc/firmware/dsps_fluid.b01 \
	device/zte/smarttab_common/proprietary/etc/firmware/dsps_fluid.b02:system/etc/firmware/dsps_fluid.b02 \
	device/zte/smarttab_common/proprietary/etc/firmware/dsps_fluid.b03:system/etc/firmware/dsps_fluid.b03 \
	device/zte/smarttab_common/proprietary/etc/firmware/dsps_fluid.mdt:system/etc/firmware/dsps_fluid.mdt \
	device/zte/smarttab_common/proprietary/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
	device/zte/smarttab_common/proprietary/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
	device/zte/smarttab_common/proprietary/etc/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw 

#modem Scripts 	
PRODUCT_COPY_FILES += \
	device/zte/smarttab_common/proprietary/etc/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh \
	device/zte/smarttab_common/proprietary/etc/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
	device/zte/smarttab_common/proprietary/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
	device/zte/smarttab_common/proprietary/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
	device/zte/smarttab_common/proprietary/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
	device/zte/smarttab_common/proprietary/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh 
	
	
#codecs	
PRODUCT_COPY_FILES += \
    device/zte/smarttab_common/proprietary/lib/libOmxAacDec.so:/system/lib/libOmxAacDec.so \
    device/zte/smarttab_common/proprietary/lib/libOmxQcelp13Dec.so:/system/lib/libOmxQcelp13Dec.so \
    device/zte/smarttab_common/proprietary/lib/libOmxEvrcDec.so:/system/lib/libOmxEvrcDec.so \
    device/zte/smarttab_common/proprietary/lib/libOmxWmaDec.so:/system/lib/libOmxWmaDec.so \
	device/zte/smarttab_common/proprietary/lib/libmmparser.so:/system/lib/libmmparser.so \
	device/zte/smarttab_common/proprietary/lib/libDivxDrm.so:/system/lib/libDivxDrm.so \
	device/zte/smarttab_common/proprietary/lib/libmmparser_divxdrmlib.so:/system/lib/libmmparser_divxdrmlib.so \
	device/zte/smarttab_common/proprietary/lib/libmmosal.so:/system/lib/libmmosal.so \
#    device/zte/smarttab_common/proprietary/lib/libOmxQcelp13Enc.so:/system/lib/libOmxQcelp13Enc.so \
#    device/zte/smarttab_common/proprietary/lib/libOmxAmrEnc.so:/system/lib/libOmxAmrEnc.so \
#	device/zte/smarttab_common/proprietary/lib/libOmxEvrcEnc.so:/system/lib/libOmxEvrcEnc.so \
#	device/zte/smarttab_common/proprietary/lib/libOmxAacEnc.so:/system/lib/libOmxAacEnc.so \

#Sensors
PRODUCT_COPY_FILES += \
	device/zte/smarttab_common/proprietary/lib/hw/sensors.msm8660.so:system/lib/hw/sensors.msm8660.so \
	device/zte/smarttab_common/proprietary/lib/libmpl_sys_jni.so:system/lib/libmpl_sys_jni.so \
	device/zte/smarttab_common/proprietary/lib/libmpl.so:system/lib/libmpl.so \
	device/zte/smarttab_common/proprietary/etc/thermald.conf:system/etc/thermald.conf \
	device/zte/smarttab_common/proprietary/framework/com.invensense.android.hardware.jar:system/framework/com.invensense.android.hardware.jar \
	device/zte/smarttab_common/proprietary/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
	device/zte/smarttab_common/proprietary/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
	device/zte/smarttab_common/proprietary/lib/libmllite.so:system/lib/libmllite.so \
	device/zte/smarttab_common/proprietary/lib/libmlplatform.so:system/lib/libmlplatform.so \
	device/zte/smarttab_common/proprietary/cal.bin:data/cal.bin \
#wifi
PRODUCT_COPY_FILES += \
	device/zte/smarttab_common/proprietary/etc/wifi/apsta_bcm4330_b2.bin:system/etc/wifi/apsta_bcm4330_b2.bin \
	device/zte/smarttab_common/proprietary/etc/wifi/bcm4330_b2.bin:system/etc/wifi/bcm4330_b2.bin \
	device/zte/smarttab_common/proprietary/etc/wifi/fw_bcm4330_apsta_b2.bin:system/etc/wifi/fw_bcm4330_apsta_b2.bin \
	device/zte/smarttab_common/proprietary/etc/wifi/fw_bcm4330_b2.bin:system/etc/wifi/fw_bcm4330_b2.bin \
	device/zte/smarttab_common/proprietary/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf 
	
#camera
PRODUCT_COPY_FILES += \
	device/zte/smarttab_common/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
	device/zte/smarttab_common/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
	device/zte/smarttab_common/proprietary/lib/libmmjpeg.so:obj/lib/libmmjpeg.so \
    device/zte/smarttab_common/proprietary/lib/liboemcamera.so:obj/lib/liboemcamera.so \
    device/zte/smarttab_common/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
	device/zte/smarttab_common/proprietary/lib/libgemini.so:system/lib/libgemini.so \
	device/zte/smarttab_common/proprietary/lib/libmmmpo.so:system/lib/libmmmpo.so \
    device/zte/smarttab_common/proprietary/bin/v4l2-qcamera-app:system/bin/v4l2-qcamera-app \
	device/zte/smarttab_common/proprietary/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
	device/zte/smarttab_common/proprietary/bin/mm-qcamera-test:system/bin/mm-qcamera-test \
	device/zte/smarttab_common/proprietary/bin/mm-mpo-enc-test:system/bin/mm-mpo-enc-test \
	device/zte/smarttab_common/proprietary/bin/mm-qcamera-testsuite-client:system/bin/mm-qcamera-testsuite-client \
#	device/zte/smarttab_common/proprietary/lib/libcamera.so:obj/lib/libcamera.so \
#   device/zte/smarttab_common/proprietary/lib/libcamera.so:system/lib/libcamera.so \
#	device/zte/smarttab_common/proprietary/lib/hw/camera.msm8660.so:obj/lib/camera.msm8660.so \
#   device/zte/smarttab_common/proprietary/lib/hw/camera.msm8660.so:system/lib/hw/camera.msm8660.so \


	#wiperiface
PRODUCT_COPY_FILES += \
	device/zte/smarttab_common/proprietary/lib/libcommondefs.so:system/lib/libcommondefs.so \
	device/zte/smarttab_common/proprietary/lib/libloc_api-rpc-qc.so:system/lib/libloc_api-rpc-qc.so \
    device/zte/smarttab_common/proprietary/lib/libloc_ext.so:system/lib/libloc_ext.so \
    device/zte/smarttab_common/proprietary/lib/libwiperjni.so:system/lib/libwiperjni.so \
    device/zte/smarttab_common/proprietary/lib/libtcpfinaggr.so:system/lib/libtcpfinaggr.so \

# Binary files
PRODUCT_COPY_FILES += \
	device/zte/smarttab_common/proprietary/bin/battery_charging:system/bin/battery_charging \
	device/zte/smarttab_common/proprietary/bin/bridgemgrd:system/bin/bridgemgrd \
	device/zte/smarttab_common/proprietary/bin/port-bridge:system/bin/port-bridge \
	device/zte/smarttab_common/proprietary/bin/qmiproxy:system/bin/qmiproxy \
	device/zte/smarttab_common/proprietary/bin/mpdecision:system/bin/mpdecision \
	device/zte/smarttab_common/proprietary/bin/ds_fmc_appd:system/bin/ds_fmc_appd \
	device/zte/smarttab_common/proprietary/bin/qmuxd:system/bin/qmuxd \
	device/zte/smarttab_common/proprietary/bin/dcvsd:system/bin/dcvsd \
	device/zte/smarttab_common/proprietary/bin/rmt_storage:system/bin/rmt_storage \
	device/zte/smarttab_common/proprietary/bin/thermald:system/bin/thermald \
	device/zte/smarttab_common/proprietary/bin/usbhub:system/bin/usbhub \
	device/zte/smarttab_common/proprietary/bin/wiperiface:system/bin/wiperiface \
	device/zte/smarttab_common/proprietary/bin/usbhub_init:system/bin/usbhub_init \
	device/zte/smarttab_common/proprietary/bin/sdcard:system/bin/sdcard \
	device/zte/smarttab_common/proprietary/bin/radish:system/bin/radish \
	device/zte/smarttab_common/proprietary/bin/hdmid:system/bin/hdmid \
#	device/zte/smarttab_common/proprietary/bin/ash:system/bin/sh \
