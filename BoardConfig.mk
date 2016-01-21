USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/vee7/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH 					:= device/lge/vee7/include

BOARD_USES_GENERIC_AUDIO := true
USE_CAMERA_STUB := true

TARGET_DEVICE := vee7

# Target info
TARGET_NO_BOOTLOADER  							:= true
TARGET_NO_RADIOIMAGE  							:= true

# Architecture and CPU
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a5

TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

ARCH_ARM_HAVE_TLS_REGISTER := true

# Optimizations
TARGET_CPU_SMP 									:= true
ARCH_ARM_HAVE_TLS_REGISTER 						:= true
		
TARGET_CORTEX_CACHE_LINE_32 					:= true
ARCH_ARM_HAVE_32_BYTE_CACHE_LINES 				:= true
ARCH_ARM_HAVE_TLS_REGISTER 						:= true
TARGET_USE_SPARROW_BIONIC_OPTIMIZATION 			:= true

ARCH_ARM_HIGH_OPTIMIZATION 						:= true
ARCH_ARM_HIGH_OPTIMIZATION_COMPAT 				:= true

TARGET_GLOBAL_CFLAGS 							+= -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS 							+= -mfpu=neon -mfloat-abi=softfp

# Kernel
BOARD_KERNEL_BASE 								:= 0x00200000
BOARD_KERNEL_CMDLINE 							:= androidboot.hardware=vee7 msm_cpr.enable=0 androidboot.selinux=permissive no_console_suspend=1
BOARD_MKBOOTIMG_ARGS 							:= --ramdisk_offset 0x01200000
BOARD_PAGE_SIZE 								:= 4096
TARGET_KERNEL_SOURCE 							:= kernel/lge/vee7
TARGET_KERNEL_CONFIG 							:= cyanogenmod_vee7_nfc_defconfig

# Low RAM settings
MALLOC_IMPL := dlmalloc
TARGET_BOOTANIMATION_TEXTURE_CACHE := false
TARGET_BOOTANIMATION_HALF_RES := true

# Qualcomm hardware
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DUSE_MDP3
COMMON_GLOBAL_CFLAGS += -DLPA_DEFAULT_BUFFER_SIZE=480
TARGET_USES_ION := true
TARGET_USES_QCOM_BSP := true

# Graphics
USE_OPENGL_RENDERER 							:= true
TARGET_USES_ION									:= true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET 				:= true
TARGET_NO_HW_VSYNC								:= true
	
# Qualcomm hardware
BOARD_USES_QCOM_HARDWARE 						:= true
COMMON_GLOBAL_CFLAGS 							+= -DQCOM_HARDWARE -DQCOM_BSP
BOARD_USES_QCOM_LIBS 							:= true

# GPS
BOARD_USES_QCOM_LIBRPC 							:= true
BOARD_USES_QCOM_GPS 							:= true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION 		:= 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE			:= $(TARGET_BOARD_PLATFORM)

# Audio
BOARD_QCOM_VOIP_ENABLED := true

# Light
TARGET_PROVIDES_LIBLIGHT 						:= true

# Audio
TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_LEGACY_ALSA_AUDIO := true
AUDIO_FEATURE_ENABLED_INCALL_MUSIC := false
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := false
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := false

# Camera
USE_CAMERA_STUB 								:= true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true

# RIL
#TARGET_RIL_VARIANT := caf
#BOARD_PROVIDES_LIBRIL := true

# Bluetooth
BOARD_HAVE_BLUETOOTH 							:= true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR 	:= device/lge/vee7/bluetooth

# Acceleration in browser
ENABLE_WEBGL 									:= true
WITH_JIT 										:= true
ENABLE_JSC_JIT 									:= true
JS_ENGINE 										:= v8
HTTP 											:= chrome
TARGET_FORCE_CPU_UPLOAD 						:= true

# Wlan
BOARD_WLAN_DEVICE 								:= qcwcn
WIFI_EXT_MODULE_PATH 							:= /system/lib/modules/librasdioif.ko
WIFI_DRIVER_MODULE_PATH 						:= /system/lib/modules/wlan.ko
WIFI_EXT_MODULE_NAME 							:= librasdioif
WIFI_DRIVER_MODULE_NAME 						:= wlan
WPA_SUPPLICANT_VERSION 							:= VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER 					:= NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB 				:= lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER 							:= NL80211
BOARD_HOSTAPD_PRIVATE_LIB 						:= lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_STA 						:= "sta"
WIFI_DRIVER_FW_PATH_AP 							:= "ap"
WIFI_DRIVER_FW_PATH_PARAM 						:= "/data/misc/wifi/fwpath"
BOARD_LEGACY_NL80211_STA_EVENTS 				:= true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE					:= 12582912
BOARD_RECOVERYIMAGE_PARTITION_SIZE 				:= 12582912
BOARD_SYSTEMIMAGE_PARTITION_SIZE 				:= 1270874112
BOARD_USERDATAIMAGE_PARTITION_SIZE 				:= 1941962752
BOARD_FLASH_BLOCK_SIZE 							:= 131072
BOARD_VOLD_MAX_PARTITIONS 						:= 27
TARGET_USERIMAGES_USE_EXT4 						:= true

# Mass Storage
TARGET_USE_CUSTOM_LUN_FILE_PATH 				:= /sys/class/android_usb/android0/f_mass_storage/lun/file
BOARD_UMS_LUNFILE 								:= /sys/class/android_usb/android0/f_mass_storage/lun/file

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

BLOCK_BASED_OTA := false



