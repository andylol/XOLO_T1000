#
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
TARGET_PREBUILT_KERNEL := device/xolo/us9230e1/kernel

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/xolo/us9230e1/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# Kernel
PRODUCT_COPY_FILES += \
$(LOCAL_KERNEL):kernel

LOCAL_PATH := device/xolo/us9230e1
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# This device is xhdpi
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi


# EndeavorU is similar to Galaxy Nexus in terms of RAM
include frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# still need to set english for audio init
PRODUCT_LOCALES += en_US

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    $(LOCAL_PATH)/configs/nvcpud.xml:system/etc/permissions/nvcpud.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/fstab.us9230e1:root/fstab.us9230e1 \
    $(LOCAL_PATH)/ramdisk/init.us9230e1.rc:root/init.us9230e1.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.us9230e1.rc:root/ueventd.us9230e1.rc \
    $(LOCAL_PATH)/ramdisk/init.us9230e1.usb.rc:root/init.us9230e1.usb.rc 

# system/etc Prebuilts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

## Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/asound.conf:system/etc/asound.conf \
    $(LOCAL_PATH)/configs/nvaudio_conf.xml:system/etc/nvaudio_conf.xml \
    $(LOCAL_PATH)/configs/alsa/alsa.conf:system/usr/share/alsa/alsa.conf \
    $(LOCAL_PATH)/configs/alsa/cards/aliases.conf:system/usr/share/alsa/cards/aliases.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/center_lfe.conf:system/usr/share/alsa/pcm/center_lfe.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/default.conf:system/usr/share/alsa/pcm/default.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/dmix.conf:system/usr/share/alsa/pcm/dmix.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/dpl.conf:system/usr/share/alsa/pcm/dpl.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/dsnoop.conf:system/usr/share/alsa/pcm/dsnoop.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/front.conf:system/usr/share/alsa/pcm/front.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/iec958.conf:system/usr/share/alsa/pcm/iec958.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/modem.conf:system/usr/share/alsa/pcm/modem.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/rear.conf:system/usr/share/alsa/pcm/rear.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/side.conf:system/usr/share/alsa/pcm/side.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/surround40.conf:system/usr/share/alsa/pcm/surround40.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/surround41.conf:system/usr/share/alsa/pcm/surround41.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/surround50.conf:system/usr/share/alsa/pcm/surround50.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/surround51.conf:system/usr/share/alsa/pcm/surround51.conf \
    $(LOCAL_PATH)/configs/alsa/pcm/surround71.conf:system/usr/share/alsa/pcm/surround71.conf


    
# misc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/model_frontal.xml:system/etc/model_frontal.xml \
    $(LOCAL_PATH)/configs/camera_overrides.isp:system/etc/camera_overrides.isp \
    $(LOCAL_PATH)/configs/dbus.conf:system/etc/dbus.conf \
    $(LOCAL_PATH)/configs/enctune.conf:system/etc/enctune.conf \
    $(LOCAL_PATH)/configs/nvaudio_conf.xml:system/etc/nvaudio_conf.xml \
    $(LOCAL_PATH)/configs/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf
    $(LOCAL_PATH)/configs/nvcamera.conf:system/etc/nvcamera.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/tegra-kbc.kl:system/usr/keylayout/tegra-kbc.kl \
    $(LOCAL_PATH)/raydium_ts.idc:system/usr/idc/raydium_ts.idc \
    $(LOCAL_PATH)/icudt48l.dat:system/usr/icu/icudt48l.dat
    

# Wi-Fi
$(call inherit-product, hardware/ti/wlan/mac80211/wl128x-wlan-products.mk)
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
     $(LOCAL_PATH)/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf
    
# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    softap.interface=wlan0 \
    wifi.ap.interface=wlan0 \
    wifi.supplicant_scan_interval=90 \
    persist.wlan.ti.calibrated=0

## Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

# Wifi
PRODUCT_PACKAGES += \
    lib_driver_cmd_wl12xx \
    dhcpcd.conf \
    hostapd.conf \
    wifical.sh \
    wpa_supplicant.conf \
    regulatory.bin 

# Bluetooth
PRODUCT_PACKAGES += \
    uim-sysfs    
    
## OpenSource modules
PRODUCT_PACKAGES += \
    audio.primary.tegra \
    audio_policy.tegra \
    camera.tegra \
    libstagefrighthw 

## Misc
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.r_submix.default \
    Camera2 \
    com.android.future.usb.accessory \
    e2fsck \
    Launcher3 \
    libnetcmdiface \
    libemoji.so \
    su

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# we don't have selinux now
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=0

# Include Proprietary files
$(call inherit-product, vendor/xolo/us9230e1/us9230e1-vendor.mk)    

