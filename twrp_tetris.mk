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

# Maintainer Information
OFOX_MAINTAINER := Rahul Singh Bhadoriya
OFOX_DEVICE := tetris

# GKI / Vendor Boot / A-B Device Setup
OF_VIRTUAL_AB_PARTITION := true
OF_AB_DEVICE_WITH_RECOVERY_PARTITION := false
OF_USE_TWRP_SAR_DETECT := true
OF_DONT_PATCH_ON_FRESH_INSTALLATION := true

# Magiskboot
OF_USE_MAGISKBOOT := true
OF_USE_MAGISKBOOT_FOR_ALL_PATCHES := true

# OrangeFox UI & Layout
OF_STATUS_H := 130
OF_SCREEN_H := 2400
OF_STATUS_INDENT_LEFT := 48
OF_STATUS_INDENT_RIGHT := 48

OF_OPTIONS_LIST_NUM := 9

# Partition & Storage Tools
OF_ENABLE_ALL_PARTITION_TOOLS := 1
OF_ENABLE_LPTOOLS := 1
OF_USE_LZ4_COMPRESSION := 1
OF_WIPE_METADATA_AFTER_DATAFORMAT := 1
OF_LOOP_DEVICE_ERRORS_TO_LOG := 1

# Formatting Fixes
OF_BIND_MOUNT_SDCARD_ON_FORMAT := 1
OF_UNBIND_SDCARD_F2FS := 1
OF_NO_TREBLE_COMPATIBILITY_CHECK := 1

