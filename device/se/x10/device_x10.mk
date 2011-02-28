## This device is the X10

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/se/x10/x10-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/se/x10/overlay

# HAL libs and other system binaries
PRODUCT_PACKAGES += \
    gps.qsd8k \
    lights.es209ra \
    gralloc.es209ra \
    libOmxCore \
    libOmxVidEnc \
    libmm-omxcore
#    abtfilt
#    libril

# Extra apps
PRODUCT_PACKAGES += \
	Torch


# Live wallpaper packages
PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    librs_jni 

PRODUCT_LOCALES := hdpi

PRODUCT_PACKAGES += \
    dalvik.vm.heapsize=32m \
    persisit.sys.vm.heapsize=32m
    
#we can hold precise data
PRODUCT_TAGS +=dalvik.gc.type-precise

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Board-specific init
PRODUCT_COPY_FILES += \
    device/se/x10/ueventd.qct.rc:root/ueventd.qct.rc \
    device/se/x10/init.qcom.rc:root/init.qcom.rc

# OMX TESTS
PRODUCT_COPY_FILES += \
    device/se/x10/prebuilt/omx_tests:system/bin/omx_tests \
    device/se/x10/prebuilt/mm-venc-omx-test:system/bin/mm-venc-omx-test 



## RIL related stuff
PRODUCT_COPY_FILES += \
    vendor/se/x10/proprietary/bin/port-bridge:system/bin/port-bridge \
    vendor/se/x10/proprietary/bin/qmuxd:system/bin/qmuxd \
    vendor/se/x10/proprietary/bin/rild:system/bin/rild \
    vendor/se/x10/proprietary/lib/libauth.so:system/lib/libauth.so \
    vendor/se/x10/proprietary/lib/libcm.so:system/lib/libcm.so \
    vendor/se/x10/proprietary/lib/libdiag.so:system/lib/libdiag.so \
    vendor/se/x10/proprietary/lib/libdll.so:system/lib/libdll.so \
    vendor/se/x10/proprietary/lib/libdsm.so:system/lib/libdsm.so \
    vendor/se/x10/proprietary/lib/libdss.so:system/lib/libdss.so \
    vendor/se/x10/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    vendor/se/x10/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
    vendor/se/x10/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    vendor/se/x10/proprietary/lib/libnv.so:system/lib/libnv.so \
    vendor/se/x10/proprietary/lib/liboem_rapi.so:system/lib/liboem_rapi.so \
    vendor/se/x10/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \
    vendor/se/x10/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \
    vendor/se/x10/proprietary/lib/libqmi.so:system/lib/libqmi.so \
    vendor/se/x10/proprietary/lib/libqueue.so:system/lib/libqueue.so \
    vendor/se/x10/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
    vendor/se/x10/proprietary/lib/libwms.so:system/lib/libwms.so \
    vendor/se/x10/proprietary/lib/libwmsts.so:system/lib/libwmsts.so 
#    vendor/se/x10/proprietary/lib/libril.so:system/lib/libril.so \


## OMX proprietaries
PRODUCT_COPY_FILES += \
    vendor/se/x10/proprietary/lib/libOmxVdec.so:system/lib/libOmxVdec.so \
    vendor/se/x10/proprietary/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    vendor/se/x10/proprietary/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
    vendor/se/x10/proprietary/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
    vendor/se/x10/proprietary/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
    vendor/se/x10/proprietary/lib/libOmxQcelp13Dec.so:system/lib/libOmxQcelp13Dec.so \
    vendor/se/x10/proprietary/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so 

## Hardware properties 
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

## Camera proprietaries
PRODUCT_COPY_FILES += \
    vendor/se/x10/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
    vendor/se/x10/proprietary/lib/libcamera.so:system/lib/libcamera.so \
    vendor/se/x10/proprietary/lib/libcamera.so:obj/lib/libcamera.so \
    vendor/se/x10/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    vendor/se/x10/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
    vendor/se/x10/proprietary/lib/libgemini.so:system/lib/libgemini.so \
    vendor/se/x10/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    vendor/se/x10/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    vendor/se/x10/proprietary/etc/firmware/camfirm.bin:system/etc/firmware/camfirm.bin 


## Atheros AR6002 firmware
PRODUCT_COPY_FILES += \
    vendor/se/x10/proprietary/bin/eeprom.AR6002:system/bin/eeprom.AR6002 \
    vendor/se/x10/proprietary/bin/wlan_mac:system/bin/wlan_mac \
    vendor/se/x10/proprietary/bin/wlan_tool:system/bin/wlan_tool \
    vendor/se/x10/proprietary/bin/wpa_supplicant:system/bin/wpa_supplicant \
    device/se/x10/prebuilt/wifi.ko:system/lib/modules/wifi.ko \
    device/se/x10/prebuilt/data.patch.hw2_0.bin:system/lib/modules/data.patch.hw2_0.bin \
    device/se/x10/prebuilt/athwlan.bin.z77:system/lib/modules/athwlan.bin.z77 

## BT proprietary
PRODUCT_COPY_FILES += \
    vendor/se/x10/proprietary/bin/hci_qcomm_init:system/bin/hci_qcomm_init \
    vendor/se/x10/proprietary/bin/bmiloader:system/bin/bmiloader \
    vendor/se/x10/proprietary/bin/abtfilt:system/bin/abtfilt \
    vendor/se/x10/proprietary/etc/init.es209ra.bt.sh:system/etc/init.es209ra.bt.sh 
#    vendor/se/x10/proprietary/bin/hciattach:system/bin/hciattach \


## Adreno 200 files
PRODUCT_COPY_FILES += \
    vendor/se/x10/proprietary/lib/libgsl.so:system/lib/libgsl.so \
    vendor/se/x10/proprietary/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    vendor/se/x10/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    vendor/se/x10/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    vendor/se/x10/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    vendor/se/x10/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so 

#kernel modules
PRODUCT_COPY_FILES += \
    vendor/se/x10/proprietary/lib/hw/copybit.qsd8k.so:system/lib/hw/copybit.qsd8k.so \
    vendor/se/x10/proprietary/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so \
    device/se/x10/prebuilt/dm-mod.ko:system/lib/modules/dm-mod.ko \
    device/se/x10/prebuilt/dm-crypt.ko:system/lib/modules/dm-crypt.ko \
    device/se/x10/prebuilt/twofish.ko:system/lib/modules/twofish.ko \
    device/se/x10/prebuilt/twofish_common.ko:system/lib/modules/twofish_common.ko 


## Other libraries and proprietary binaries
PRODUCT_COPY_FILES += \
    device/se/x10/DualMicControl.txt:system/etc/DualMicControl.txt \
    device/se/x10/prebuilt/sensors.conf:system/etc/sensors.conf \
    vendor/se/x10/proprietary/bin/akmd2:system/bin/akmd2 \
    vendor/se/x10/proprietary/bin/updatemiscta:system/bin/updatemiscta \
    vendor/se/x10/proprietary/lib/libmiscta.so:system/lib/libmiscta.so \
    device/se/x10/prebuilt/busybox:system/bin/busybox \
    device/se/x10/prebuilt/chargemon:system/bin/chargemon \
    device/se/x10/prebuilt/ramdisk.tar:system/bin/ramdisk.tar \
    device/se/x10/prebuilt/xrecovery.tar:system/bin/xrecovery.tar \
    device/se/x10/prebuilt/charger:system/bin/charger \
    vendor/se/x10/proprietary/lib/libaudio.so:system/lib/libaudio.so \
    device/se/x10/prebuilt/hw_config.sh:system/etc/hw_config.sh \
    vendor/se/x10/proprietary/etc/semc/chargemon/anim1.rle:system/etc/semc/chargemon/anim1.rle \
    vendor/se/x10/proprietary/etc/semc/chargemon/anim2.rle:system/etc/semc/chargemon/anim2.rle \
    vendor/se/x10/proprietary/etc/semc/chargemon/anim3.rle:system/etc/semc/chargemon/anim3.rle \
    vendor/se/x10/proprietary/etc/semc/chargemon/anim4.rle:system/etc/semc/chargemon/anim4.rle \
    vendor/se/x10/proprietary/etc/semc/chargemon/anim5.rle:system/etc/semc/chargemon/anim5.rle \
    vendor/se/x10/proprietary/etc/semc/chargemon/anim6.rle:system/etc/semc/chargemon/anim6.rle \
    vendor/se/x10/proprietary/etc/semc/chargemon/anim7.rle:system/etc/semc/chargemon/anim7.rle \
    vendor/se/x10/proprietary/etc/semc/chargemon/anim8.rle:system/etc/semc/chargemon/anim8.rle 


PRODUCT_COPY_FILES += \
    device/se/x10/media_profiles.xml:system/etc/media_profiles.xml \
    device/se/x10/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/se/x10/vold.fstab:system/etc/vold.fstab \
    device/se/x10/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf 

PRODUCT_COPY_FILES += \
    device/se/x10/prebuilt/es209ra_keypad.kl:system/usr/keylayout/es209ra_keypad.kl \
    device/se/x10/prebuilt/es209ra_handset.kl:system/usr/keylayout/es209ra_handset.kl \
    device/se/x10/prebuilt/es209ra_keypad.kcm.bin:system/usr/keychars/es209ra_keypad.kcm.bin 

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := x10
PRODUCT_DEVICE := x10
PRODUCT_MODEL := Xperia X10

CYANOGEN_WITH_GOOGLE := true