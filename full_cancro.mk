TARGET_CONTINUOUS_SPLASH_ENABLED := true

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from cancro device
$(call inherit-product, device/xiaomi/cancro/cancro.mk)
$(call inherit-product-if-exists, vendor/xiaomi/cancro/cancro-vendor.mk)

# Product configuration
PRODUCT_NAME := full_cancro
PRODUCT_DEVICE := cancro
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := MI3W
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := cancro
TARGET_VENDOR_DEVICE_NAME := MI3W

# Unofficial build id
TARGET_UNOFFICIAL_BUILD_ID := audahadi

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=cancro PRODUCT_NAME=cancro

## Use the latest approved GMS identifiers unless running a signed build
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Xiaomi/cancro/cancro:6.0/MDB08M/5.11.6:userdebug/test-keys PRIVATE_BUILD_DESC="cancro-userdebug 6.0 MDB08M 5.11.6 test-keys"
