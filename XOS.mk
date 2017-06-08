$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common XOS stuff.
$(call inherit-product, vendor/xos/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/zte/bladel3/device.mk)

PRODUCT_GMS_CLIENTID_BASE := android-zte

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := bladel3
PRODUCT_NAME := XOS_$(PRODUCT_DEVICE)
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := ZTE Blade L3
PRODUCT_MANUFACTURER := aeon
PRODUCT_VENDOR := $(PRODUCT_BRAND)
TARGET_VENDOR := $(PRODUCT_VENDOR)