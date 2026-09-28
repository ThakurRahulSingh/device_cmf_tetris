# AOSP Base Inherits
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# OrangeFox/TWRP Common Inherit
$(call inherit-product, vendor/twrp/config/common.mk)

# Device specific configs
$(call inherit-product, device/cmf/tetris/device.mk)

# Device identifier
PRODUCT_DEVICE := tetris
PRODUCT_NAME := twrp_tetris
PRODUCT_BRAND := CMF
PRODUCT_MODEL := A015
PRODUCT_MANUFACTURER := CMF
PRODUCT_RELEASE_NAME := CMF Phone 1

# VINTF Fix
PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false

# FUSE passthrough & vendor_boot flag
PRODUCT_PROPERTY_OVERRIDES += \
    ro.twrp.vendor_boot=true \
    persist.sys.fuse.passthrough.enable=true
