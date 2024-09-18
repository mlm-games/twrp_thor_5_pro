# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := thor5pro
PRODUCT_NAME := omni_thor5pro
PRODUCT_BRAND := Mediatek
PRODUCT_MODEL := thor5pro
PRODUCT_MANUFACTURER := Mediatek
