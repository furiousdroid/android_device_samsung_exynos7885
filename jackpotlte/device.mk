DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

TARGET_LOCAL_ARCH := arm64
TARGET_SOC := exynos7885

# Inherit common device configuration
$(call inherit-product, device/samsung/universal7885-common/universal7885-common.mk)

$(call inherit-product, vendor/samsung/jackpotlte/jackpotlte-vendor.mk)

$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

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
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

BUILD_FINGERPRINT := "samsung/jackpotltexx/jackpotlte:9/PPR1.180610.011/A530FXXS8CSK2:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRIVATE_BUILD_DESC="jackpotltexx-user 9 PPR1.180610.011 A530FXXS8CSK2 release-keys"
