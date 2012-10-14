$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/rockchip/rk29/rk29-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/rockchip/rk29/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/rockchip/rk29/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_rk29
PRODUCT_DEVICE := rk29
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_PACKAGES += \
    Camera \
    Development \
    LatinIME \
    SpareParts \
    Superuser \
    su

# Optional CM packages
PRODUCT_PACKAGES += \
    VideoEditor \
    VoiceDialer \
    SoundRecorder \
    Basic \
    HoloSpiralWallpaper \
    MagicSmokeWallpapers \
    NoiseField \
    Galaxy4 \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    PhaseBeam

# Custom CM packages
PRODUCT_PACKAGES += \
    Trebuchet \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf

PRODUCT_PACKAGES += \
	librs_jni

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
	librs_jni \
	com.android.future.usb.accessory \
	com.android.location.provider

# Filesystem management tools
PRODUCT_PACKAGES += \
	make_ext4fs \
	setup_fs

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    vendor/rockchip/rk29/proprietary/RkExplorer.apk:system/app/RkExplorer.apk \
    vendor/rockchip/rk29/proprietary/RkVideoPlayer.apk:system/app/RkVideoPlayer.apk \
    vendor/rockchip/rk29/proprietary/bin/adobedevchk:system/bin/adobedevchk \
    vendor/rockchip/rk29/proprietary/bin/chat:system/bin/chat \
    vendor/rockchip/rk29/proprietary/bin/hostapd_rtl:system/bin/hostapd_rtl \
    vendor/rockchip/rk29/proprietary/bin/iwconfig:system/bin/iwconfig \
    vendor/rockchip/rk29/proprietary/bin/iwlist:system/bin/iwlist \
    vendor/rockchip/rk29/proprietary/bin/mount-ntfs.sh:system/bin/mount-ntfs.sh \
    vendor/rockchip/rk29/proprietary/bin/ntfs-3g:system/bin/ntfs-3g \
    vendor/rockchip/rk29/proprietary/bin/sysinit:system/bin/sysinit \
    vendor/rockchip/rk29/proprietary/bin/umount-ntfs.sh:system/bin/umount-ntfs.sh \
    vendor/rockchip/rk29/proprietary/bin/usb_modeswitch:system/bin/usb_modeswitch \
    vendor/rockchip/rk29/proprietary/bin/usb_modeswitch.sh:system/bin/usb_modeswitch.sh \
    vendor/rockchip/rk29/proprietary/etc/operator_table:system/etc/operator_table \
    vendor/rockchip/rk29/proprietary/etc/vold.fstab:system/etc/vold.fstab \
    vendor/rockchip/rk29/proprietary/etc/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    vendor/rockchip/rk29/proprietary/etc/call-pppd:system/etc/ppp/call-pppd \
    vendor/rockchip/rk29/proprietary/etc/ip-down:system/etc/ppp/ip-down \
    vendor/rockchip/rk29/proprietary/etc/ip-up:system/etc/ppp/ip-up \
    vendor/rockchip/rk29/proprietary/adobefonts/AdobeHeitiStd.bin:system/fonts/adobefonts/AdobeHeitiStd.bin \
    vendor/rockchip/rk29/proprietary/adobefonts/AdobeMingStd.bin:system/fonts/adobefonts/AdobeMingStd.bin \
    vendor/rockchip/rk29/proprietary/adobefonts/AdobeMyungjoStd.bin:system/fonts/adobefonts/AdobeMyungjoStd.bin \
    vendor/rockchip/rk29/proprietary/adobefonts/CRengine.ttf:system/fonts/adobefonts/CRengine.ttf \
    vendor/rockchip/rk29/proprietary/adobefonts/RyoGothicPlusN.bin:system/fonts/adobefonts/RyoGothicPlusN.bin \
    vendor/rockchip/rk29/proprietary/libEGL_VIVANTE.so:system/lib/egl/libEGL_VIVANTE.so \
    vendor/rockchip/rk29/proprietary/libGLESv1_CM_VIVANTE.so:system/lib/egl/libGLESv1_CM_VIVANTE.so \
    vendor/rockchip/rk29/proprietary/libGLESv2_VIVANTE.so:system/lib/egl/libGLESv2_VIVANTE.so \
    vendor/rockchip/rk29/proprietary/audio.primary.rk29sdk.so:system/lib/hw/audio.primary.rk29sdk.so \
    vendor/rockchip/rk29/proprietary/audio_policy.rk29sdk.so:system/lib/hw/audio_policy.rk29sdk.so \
    vendor/rockchip/rk29/proprietary/camera.rk29board.so:system/lib/hw/camera.rk29board.so \
    vendor/rockchip/rk29/proprietary/copybit.rk29board.so:system/lib/hw/copybit.rk29board.so \
    vendor/rockchip/rk29/proprietary/gralloc.rk29board.so:system/lib/hw/gralloc.rk29board.so \
    vendor/rockchip/rk29/proprietary/hwcomposer.rk29board.so:system/lib/hw/hwcomposer.rk29board.so \
    vendor/rockchip/rk29/proprietary/lights.rk29board.so:system/lib/hw/lights.rk29board.so \
    vendor/rockchip/rk29/proprietary/sensors.rk29board.so:system/lib/hw/sensors.rk29board.so \
    vendor/rockchip/rk29/proprietary/libGAL.so:system/lib/libGAL.so \
    vendor/rockchip/rk29/proprietary/libadobe_rmsdk.so:system/lib/libadobe_rmsdk.so \
    vendor/rockchip/rk29/proprietary/libDeflatingDecompressor.so:system/lib/libDeflatingDecompressor.so \
    vendor/rockchip/rk29/proprietary/libflip.so:system/lib/libflip.so \
    vendor/rockchip/rk29/proprietary/libGLSLC.so:system/lib/libGLSLC.so \
    vendor/rockchip/rk29/proprietary/libjesancache.so:system/lib/libjesancache.so \
    vendor/rockchip/rk29/proprietary/libjpeghwdec.so:system/lib/libjpeghwdec.so \
    vendor/rockchip/rk29/proprietary/libjpeghwenc.so:system/lib/libjpeghwenc.so \
    vendor/rockchip/rk29/proprietary/libLineBreak.so:system/lib/libLineBreak.so \
    vendor/rockchip/rk29/proprietary/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/rockchip/rk29/proprietary/libMSPdf.762.so:system/lib/libMSPdf.762.so \
    vendor/rockchip/rk29/proprietary/libOMX_Core.so:system/lib/libOMX_Core.so \
    vendor/rockchip/rk29/proprietary/libomxvpu.so:system/lib/libomxvpu.so \
    vendor/rockchip/rk29/proprietary/libril-rk29-dataonly.so:system/lib/libril-rk29-dataonly.so \
    vendor/rockchip/rk29/proprietary/libRkDeflatingDecompressor.so:system/lib/libRkDeflatingDecompressor.so \
    vendor/rockchip/rk29/proprietary/librkswscale.so:system/lib/librkswscale.so \
    vendor/rockchip/rk29/proprietary/librm_crypto.so:system/lib/librm_crypto.so \
    vendor/rockchip/rk29/proprietary/librm_ssl.so:system/lib/librm_ssl.so \
    vendor/rockchip/rk29/proprietary/librockchip_update_jni.so:system/lib/librockchip_update_jni.so \
    vendor/rockchip/rk29/proprietary/libstagefrighthw.so:system/lib/libstagefrighthw.so \
    vendor/rockchip/rk29/proprietary/libvpu.so:system/lib/libvpu.so \
    vendor/rockchip/rk29/proprietary/libyuvtorgb.so:system/lib/libyuvtorgb.so \
    vendor/rockchip/rk29/proprietary/registry:system/lib/registry \
    vendor/rockchip/rk29/proprietary/rmsdk.ver:system/lib/rmsdk.ver \
    vendor/rockchip/rk29/proprietary/stagefright.ver:system/lib/stagefright.ver \
    vendor/rockchip/rk29/proprietary/wlan.ko:system/lib/modules/wlan.ko \
    vendor/rockchip/rk29/proprietary/dhdutil:system/xbin/dhdutil \
    vendor/rockchip/rk29/proprietary/io:system/xbin/io \
    vendor/rockchip/rk29/proprietary/rk29-keypad.kl:system/usr/keylayout/rk29-keypad.kl

PRODUCT_PROPERTY_OVERRIDES := \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15 \
    ro.opengles.version=131072 \
    persist.sys.strictmode.visual=false \
    ro.sf.hwrotation=270 \
    ro.sf.fakerotation=true \
    sys.hwc.compose_policy=6 \
    opengl.vivante.texture=1 \
    rild.libargs=-d_/dev/ttyUSB1 \
    ril.pppchannel=/dev/ttyUSB2 \
    rild.libpath=/system/lib/libril-rk29-dataonly.so \
    ril.function.dataonly=1