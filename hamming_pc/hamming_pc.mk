# Copyright (C) 2014 The Android Open Source Project
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
PRODUCT_NAME := hamming_pc
PRODUCT_DEVICE := hamming_pc
PRODUCT_BRAND := Hamming
PRODUCT_MODEL := Mini for x86_64




# add all configurations
PRODUCT_AAPT_CONFIG := normal ldpi mdpi hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# en_US only
PRODUCT_LOCALES := en_US

# Inherit from this product for devices that support 64-bit apps using:
# $(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
# The inheritance for this must come before the inheritance chain that leads
# to core_minimal.mk

# For now this will allow 64-bit apps, but still compile all apps with JNI
# for 32-bit only.

# Copy the 64-bit primary, 32-bit secondary zygote startup script
PRODUCT_COPY_FILES += system/core/rootdir/init.zygote64_32.rc:root/init.zygote64_32.rc

# Set the zygote property to select the 64-bit primary, 32-bit secondary script
# This line must be parsed before the one in core_minimal.mk
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.zygote=zygote64_32

TARGET_SUPPORTS_32_BIT_APPS := true
TARGET_SUPPORTS_64_BIT_APPS := true


# default is nosdcard, S/W button enabled in resource
DEVICE_PACKAGE_OVERLAYS := device/hamming/pc/overlay
PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=64m \
    dalvik.vm.heapgrowthlimit=800m \
    dalvik.vm.heapsize=2048m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=2m \
    dalvik.vm.heapmaxfree=32m

PRODUCT_PACKAGES += \
    Bluetooth \
    FusedLocation \
    InputDevices \
    Keyguard \
    LatinIME \
    Phone \
    PrintSpooler \
    Provision \
    Settings \
    SystemUI \
    TeleService \
    TestingCamera \
    WAPPushManager \
    audio \
    audio_policy.default \
    audio.primary.default \
    com.android.future.usb.accessory \
    hostapd \
    librs_jni \
    libvideoeditor_core \
    libvideoeditor_jni \
    libvideoeditor_osal \
    libvideoeditorplayer \
    libvideoeditor_videofilters \
    lint \
    local_time.default \
    network \
    pand \
    power.default \
    sdptool \
    vibrator.default \
    wpa_supplicant.conf

PRODUCT_PACKAGES += \
    egl.cfg \
    libdrm \
    dristat \
    drmstat \
    libGLES_android \
    libGLES_mesa \
    libgralloc_drm \
    libglapi \
    libkms \
    libpciaccess \
    libdrm_nouveau \
    libdrm_intel \
    libdrm_amdgpu \
    gralloc.drm \
    hwcomposer.drm \
    pci.ids \
    amdgpu.ids

PRODUCT_COPY_FILES += \
    device/hamming/hamming_pc/egl/egl.cfg:system/lib/egl/egl.cfg

PRODUCT_COPY_FILES += \
    device/hamming/hamming_pc/fstab.hamming_pc:root/fstab.hamming_pc \
    device/hamming/hamming_pc/init.hamming_pc.rc:root/init.hamming_pc.rc

PRODUCT_COPY_FILES += \
    frameworks/av/media/libeffects/data/audio_effects.conf:system/etc/audio_effects.conf \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \


PRODUCT_COPY_FILES += \
    device/hamming/hamming_pc/data/etc/apns-conf.xml:system/etc/apns-conf.xml \
    device/hamming/hamming_pc/camera/media_profiles.xml:system/etc/media_profiles.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    device/hamming/hamming_pc/camera/media_codecs.xml:system/etc/media_codecs.xml

PRODUCT_COPY_FILES += \
     device/hamming/hamming_pc/hyphen-data/hyph-as.hyb:system/usr/hyphen-data/hyph-as.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-as.lic.txt:system/usr/hyphen-data/hyph-as.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-bn.hyb:system/usr/hyphen-data/hyph-bn.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-bn.lic.txt:system/usr/hyphen-data/hyph-bn.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-cy.hyb:system/usr/hyphen-data/hyph-cy.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-cy.lic.txt:system/usr/hyphen-data/hyph-cy.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-da.hyb:system/usr/hyphen-data/hyph-da.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-da.lic.txt:system/usr/hyphen-data/hyph-da.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-de-1901.hyb:system/usr/hyphen-data/hyph-de-1901.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-de-1901.lic.txt:system/usr/hyphen-data/hyph-de-1901.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-de-1996.hyb:system/usr/hyphen-data/hyph-de-1996.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-de-1996.lic.txt:system/usr/hyphen-data/hyph-de-1996.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-de-ch-1901.hyb:system/usr/hyphen-data/hyph-de-ch-1901.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-de-ch-1901.lic.txt:system/usr/hyphen-data/hyph-de-ch-1901.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-en-gb.hyb:system/usr/hyphen-data/hyph-en-gb.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-en-gb.lic.txt:system/usr/hyphen-data/hyph-en-gb.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-en-us.hyb:system/usr/hyphen-data/hyph-en-us.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-en-us.lic.txt:system/usr/hyphen-data/hyph-en-us.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-es.hyb:system/usr/hyphen-data/hyph-es.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-es.lic.txt:system/usr/hyphen-data/hyph-es.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-et.hyb:system/usr/hyphen-data/hyph-et.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-et.lic.txt:system/usr/hyphen-data/hyph-et.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-eu.hyb:system/usr/hyphen-data/hyph-eu.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-eu.lic.txt:system/usr/hyphen-data/hyph-eu.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-fr.hyb:system/usr/hyphen-data/hyph-fr.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-fr.lic.txt:system/usr/hyphen-data/hyph-fr.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-ga.hyb:system/usr/hyphen-data/hyph-ga.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-ga.lic.txt:system/usr/hyphen-data/hyph-ga.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-gu.hyb:system/usr/hyphen-data/hyph-gu.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-gu.lic.txt:system/usr/hyphen-data/hyph-gu.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-hi.hyb:system/usr/hyphen-data/hyph-hi.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-hi.lic.txt:system/usr/hyphen-data/hyph-hi.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-hr.hyb:system/usr/hyphen-data/hyph-hr.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-hr.lic.txt:system/usr/hyphen-data/hyph-hr.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-hu.hyb:system/usr/hyphen-data/hyph-hu.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-hu.lic.txt:system/usr/hyphen-data/hyph-hu.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-hy.hyb:system/usr/hyphen-data/hyph-hy.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-hy.lic.txt:system/usr/hyphen-data/hyph-hy.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-kn.hyb:system/usr/hyphen-data/hyph-kn.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-kn.lic.txt:system/usr/hyphen-data/hyph-kn.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-ml.hyb:system/usr/hyphen-data/hyph-ml.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-ml.lic.txt:system/usr/hyphen-data/hyph-ml.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-mn-cyrl.hyb:system/usr/hyphen-data/hyph-mn-cyrl.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-mn-cyrl.lic.txt:system/usr/hyphen-data/hyph-mn-cyrl.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-mr.hyb:system/usr/hyphen-data/hyph-mr.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-mr.lic.txt:system/usr/hyphen-data/hyph-mr.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-nb.hyb:system/usr/hyphen-data/hyph-nb.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-nb.lic.txt:system/usr/hyphen-data/hyph-nb.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-nn.hyb:system/usr/hyphen-data/hyph-nn.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-nn.lic.txt:system/usr/hyphen-data/hyph-nn.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-or.hyb:system/usr/hyphen-data/hyph-or.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-or.lic.txt:system/usr/hyphen-data/hyph-or.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-pa.hyb:system/usr/hyphen-data/hyph-pa.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-pa.lic.txt:system/usr/hyphen-data/hyph-pa.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-pt.hyb:system/usr/hyphen-data/hyph-pt.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-pt.lic.txt:system/usr/hyphen-data/hyph-pt.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-sl.hyb:system/usr/hyphen-data/hyph-sl.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-sl.lic.txt:system/usr/hyphen-data/hyph-sl.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-ta.hyb:system/usr/hyphen-data/hyph-ta.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-ta.lic.txt:system/usr/hyphen-data/hyph-ta.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-te.hyb:system/usr/hyphen-data/hyph-te.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-te.lic.txt:system/usr/hyphen-data/hyph-te.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-tk.hyb:system/usr/hyphen-data/hyph-tk.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-tk.lic.txt:system/usr/hyphen-data/hyph-tk.lic.txt \
     device/hamming/hamming_pc/hyphen-data/hyph-und-ethi.hyb:system/usr/hyphen-data/hyph-und-ethi.hyb \
     device/hamming/hamming_pc/hyphen-data/hyph-und-ethi.lic.txt:system/usr/hyphen-data/hyph-und-ethi.lic.txt


PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=unknown \
    ro.config.ringtone=Ring_Synth_04.ogg \
    ro.config.notification_sound=pixiedust.ogg

PRODUCT_PROPERTY_OVERRIDES := \
    ro.config.notification_sound=OnTheHunt.ogg \
    ro.config.alarm_alert=Alarm_Classic.ogg

PRODUCT_PACKAGES += \
    ContactsProvider \
    DefaultContainerService \
    Home \
    TelephonyProvider \
    UserDictionaryProvider \
    atrace \
    libandroidfw \
    libaudiopreprocessing \
    libaudioutils \
    libfilterpack_imageproc \
    libgabi++ \
    libmdnssd \
    libnfc_ndef \
    libpowermanager \
    libspeexresampler \
    libstagefright_soft_aacdec \
    libstagefright_soft_aacenc \
    libstagefright_soft_amrdec \
    libstagefright_soft_amrnbenc \
    libstagefright_soft_amrwbenc \
    libstagefright_soft_avcdec \
    libstagefright_soft_avcenc \
    libstagefright_soft_flacenc \
    libstagefright_soft_g711dec \
    libstagefright_soft_gsmdec \
    libstagefright_soft_hevcdec \
    libstagefright_soft_mp3dec \
    libstagefright_soft_mpeg2dec \
    libstagefright_soft_mpeg4dec \
    libstagefright_soft_mpeg4enc \
    libstagefright_soft_opusdec \
    libstagefright_soft_rawdec \
    libstagefright_soft_vorbisdec \
    libstagefright_soft_vpxdec \
    libstagefright_soft_vpxenc \
    libvariablespeed \
    libwebrtc_audio_preprocessing \
    mdnsd \
    requestsync \
    wifi-service

-include device/hamming/hamming_pc/core_minimal.mk

$(call inherit-product-if-exists, frameworks/webview/chromium/chromium.mk)
$(call inherit-product-if-exists, frameworks/base/data/keyboards/keyboards.mk)
$(call inherit-product-if-exists, frameworks/base/data/fonts/fonts.mk)
$(call inherit-product-if-exists, external/roboto-fonts/fonts.mk)
$(call inherit-product-if-exists, frameworks/base/data/sounds/AudioPackage5.mk)


