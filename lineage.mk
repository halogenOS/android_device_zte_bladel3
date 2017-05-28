# Release name
PRODUCT_RELEASE_NAME := MT6582

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/mediatek/mt6582/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mt6582
PRODUCT_NAME := lineage_mt6582
PRODUCT_BRAND := Mediatek
PRODUCT_MODEL := MT6582
PRODUCT_MANUFACTURER := Mediatek
