DEVICE_PATH := device/cmf/tetris

# API
PRODUCT_SHIPPING_API_LEVEL := 32
PRODUCT_TARGET_VNDK_VERSION := 34
  
PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_PACKAGES_DEBUG += \
    bootctrl

# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/init.recovery.mt6878.rc:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/init.recovery.mt6878.rc \
    $(LOCAL_PATH)/recovery/root/vendor/firmware/FT3519T_Conf_MultipleTest_V02.ini:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/vendor/firmware/FT3519T_Conf_MultipleTest_V02.ini \
    $(LOCAL_PATH)/recovery/root/vendor/firmware/focaltech_ts_fw_samsung.bin:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/vendor/firmware/focaltech_ts_fw_samsung.bin \
    $(LOCAL_PATH)/recovery/root/vendor/firmware/haptic_config.bin:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/vendor/firmware/haptic_config.bin \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/hw/android.hardware.boot@1.0-impl-1.2-mtkimpl.so:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/vendor/lib64/hw/android.hardware.boot@1.0-impl-1.2-mtkimpl.so

# Filesystem tables for GKI and Recovery
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/fstab_stock.mt6878:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.mt6878 \
    $(DEVICE_PATH)/fstab_recovery.mt6878:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/etc/recovery.fstab \
    $(DEVICE_PATH)/twrp.flags:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/etc/twrp.flags

# fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# Additional Target Libraries
TARGET_RECOVERY_DEVICE_MODULES += \
    android.hardware.graphics.common@1.0 \
    libion \
    libxml2 \
    libkeymaster4 \
    libkeymaster41 \
    libpuresoftkeymasterdevice

TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.graphics.common@1.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libxml2.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster41.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so

# Rootdir
PRODUCT_PACKAGES += \
    servicemanager.recovery.rc \
    snapuserd.rc

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) 
