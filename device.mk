#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm7325-common
$(call inherit-product, device/xiaomi/sm7325-common/common.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-aosp

# Overlays-RRO
PRODUCT_PACKAGES += \
    RedwoodCNSettingsProviderOverlay \
    RedwoodCNWifiOverlay \
    RedwoodGLSettingsProviderOverlay \
    RedwoodGLWifiOverlay \
    RedwoodINSettingsProviderOverlay \
    RedwoodINWifiOverlay

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info_yupikidp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_yupik/audio_platform_info_yupikidp.xml \
    $(LOCAL_PATH)/audio/mixer_paths_yupikidp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_yupik/mixer_paths_yupikidp.xml \
    $(LOCAL_PATH)/audio/mixer_paths_overlay_dynamic.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_yupik/mixer_paths_overlay_dynamic.xml \
    $(LOCAL_PATH)/audio/mixer_paths_overlay_static.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_yupik/mixer_paths_overlay_static.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths_yupikidp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_yupik/sound_trigger_mixer_paths_yupikidp.xml \
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_yupik/sound_trigger_platform_info.xml
    
# Packages
PRODUCT_PACKAGES += \
    GoogleCameraGo

# Sensors
PRODUCT_PACKAGES += \
    android.frameworks.sensorservice@1.0 \
    android.frameworks.sensorservice@1.0.vendor

# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/init.redwood.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.redwood.rc

# WiFi Display
PRODUCT_SYSTEM_PROPERTIES += \
    vendor.sys.video.disable.ubwc=1

# Call the proprietary setup
$(call inherit-product, vendor/xiaomi/redwood/redwood-vendor.mk)
