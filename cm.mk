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

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/lge/vee7/full_vee7.mk)

TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vee7
PRODUCT_NAME := cm_vee7
PRODUCT_BRAND := LGE
PRODUCT_MANUFACTURER := LGE
PRODUCT_MODEL := L7 II
PRODUCT_RELEASE_NAME := L7 II
