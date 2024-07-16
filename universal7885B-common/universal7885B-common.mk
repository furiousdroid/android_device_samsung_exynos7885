# Build vintf
include device/samsung/universal7885B-common/vintf/manifest.mk
include device/samsung/universal7885B-common/BoardConfigCommon.mk
    
# Keymaster TEEGRIS
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.0-service.samsung \
    libkeymaster4_1support.vendor

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-service

# Ext touch
PRODUCT_PACKAGES += \
    vendor.lineage.touch@1.0-service.samsung \
    vendor.lineage.touch@1.0-service.ss

# Init
PRODUCT_PACKAGES += \
    fstab.$(TARGET_SOC) \
    init.exynos7885.rc

# NFC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/libnfc-sec-vendor.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-sec-vendor.conf
