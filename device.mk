# Copyright (C) 2015 The CyanogenMod Project
# Copyright (C) 2015 The TeamVee Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# 	http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This file includes all definitions that apply to all L7II devices.
#
# Everything in this directory will become public

# Include Vee Common
$(call inherit-product, device/lge/vee-common/vee-common.mk)

# inherit from the proprietary version
$(call inherit-product, vendor/lge-vee/vee7/vee7-vendor.mk)

# NFC
#$(call inherit-product, device/lge/vee7/nfc.mk) # STOPPED

# Rootdir files
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/lge/vee7/rootdir,root)

# Config Files
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/lge/vee7/configs,system)

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

DEVICE_PACKAGE_OVERLAYS := device/lge/vee7/overlay

# Other Packages
PRODUCT_PACKAGES += Torch

# Permission files
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml 
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml 

include device/lge/vee7/system_prop.mk
