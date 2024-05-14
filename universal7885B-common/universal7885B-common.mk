# Build vintf
include device/samsung/universal7885B-common/vintf/manifest.mk
include device/samsung/universal7885B-common/BoardConfigCommon.mk

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service
    
# Keymaster TEEGRIS
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.0-service.samsung \
    libkeymaster4_1support.vendor
    
# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl \
    android.hardware.thermal@1.0-service

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Ext touch
PRODUCT_PACKAGES += \
    vendor.lineage.touch@1.0-service.samsung \
    vendor.lineage.touch@1.0-service.ss 
