#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from msm8937-common
$(call inherit-product, device/motorola/msm8937-common/msm8937.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/configs/audio_platform_info_extcodec.xml:system/etc/audio_platform_info_extcodec.xml

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/msm8917_mot_perry_camera.xml:system/etc/camera/msm8917_mot_perry_camera.xml \
    $(LOCAL_PATH)/configs/camera/imx219_chromatix.xml:system/etc/camera/imx219_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/s5k4h8_chromatix.xml:system/etc/camera/s5k4h8_chromatix.xml \
	$(LOCAL_PATH)/configs/camera/mot_ov5695_l5695fa0_chromatix.xml:system/etc/camera/mot_ov5695_l5695fa0_chromatix.xml

# Ramdisk
PRODUCT_PACKAGES += \
    init.target.rc

# Screen density
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine-perry.conf:system/etc/thermal-engine-perry.conf
