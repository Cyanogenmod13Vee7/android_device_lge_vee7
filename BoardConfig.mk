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

# Include Vee Common
include device/lge/vee-common/BoardConfigCommon.mk

TARGET_COMMON_VEE := true

# inherit from the proprietary version
-include vendor/lge-vee/vee7/BoardConfigVendor.mk

# Kernel
TARGET_KERNEL_CONFIG := cyanogenmod_vee7_defconfig
BOARD_KERNEL_CMDLINE := androidboot.hardware=Nvee7 androidboot.selinux=permissive

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 12582912
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12582912
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1270874112
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1941962752
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true

# BT
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/vee7/bluetooth

# Wlan
BOARD_LEGACY_NL80211_STA_EVENTS := true

# Mass Storage
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file
BOARD_UMS_LUNFILE := /sys/class/android_usb/android0/f_mass_storage/lun/file

# Recovery
DEVICE_RESOLUTION := 480x800
BOARD_HAS_FLIPPED_SCREEN := true
BOARD_HAS_LARGE_FILESYSTEM := true

# FSTAB
TARGET_RECOVERY_FSTAB := device/lge/vee7/recovery/recovery.fstab
