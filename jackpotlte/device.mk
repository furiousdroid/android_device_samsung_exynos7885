DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

TARGET_LOCAL_ARCH := arm64
TARGET_SOC := exynos7885

# Inherit common device configuration
$(call inherit-product, device/samsung/universal7885-common/universal7885-common.mk)

$(call inherit-product, vendor/samsung/jackpotlte/jackpotlte-vendor.mk)

$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

include device/samsung/jackpotlte/vintf/manifest.mk

# device tree for boot image
PRODUCT_HOST_PACKAGES += \
    dtbhtoolExynos

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb-service.samsung

TARGET_SCREEN_HEIGHT := 2220
TARGET_SCREEN_WIDTH := 1080

# Init
PRODUCT_PACKAGES += \
    fstab.$(TARGET_SOC) \

# Fingerprint
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml

PRODUCT_PACKAGES += \
   android.hardware.sensors@1.0-service
   
# Gatekeeper (software, jackpot uses mobicore which is broken(?) on AOSP)
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service.software
    
# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.0-service
    
# Fingerprint
#PRODUCT_PACKAGES += \
#    android.hardware.biometrics.fingerprint@2.1-service.samsung \
#    libbauthtzcommon_shim

# Health
#PRODUCT_PACKAGES += \
#    android.hardware.health@2.1-impl \
#    android.hardware.health@2.1-service

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1.vendor

# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@2.0.vendor
    
# Camera
PRODUCT_PACKAGES += \
    android.frameworks.cameraservice.common@2.0.vendor \
    android.frameworks.cameraservice.device@2.0.vendor \
    android.frameworks.cameraservice.service@2.1.vendor \
    
# VNDK
PRODUCT_COPY_FILES += \
    prebuilts/vndk/v30/arm64/arch-arm-armv8-a/shared/vndk-sp/libutils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libutils-v30.so \
    prebuilts/vndk/v30/arm64/arch-arm64-armv8-a/shared/vndk-sp/libutils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libutils-v30.so

BUILD_FINGERPRINT := "samsung/jackpotltexx/jackpotlte:9/PPR1.180610.011/A530FXXS8CSK2:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRIVATE_BUILD_DESC="jackpotltexx-user 9 PPR1.180610.011 A530FXXS8CSK2 release-keys"
