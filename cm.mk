# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/lge/vee7/vee7.mk)

TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vee7
PRODUCT_MODEL := vee7
PRODUCT_NAME := cm_vee7
PRODUCT_BRAND := LGE
PRODUCT_MANUFACTURER := LGE
PRODUCT_RELEASE_NAME := Nvee7
