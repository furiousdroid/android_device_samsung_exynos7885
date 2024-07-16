COMMON_PATH := device/samsung/universal7885B-common
# Keymaster
TARGET_KEYMASTER_VARIANT := samsung

BOARD_SEPOLICY_TEE_FLAVOR := teegris

# For ro.efspartitions.cpefs "cpefs"
TARGET_VENDOR_PROP += $(COMMON_PATH)/vendor.prop

BOARD_VENDOR_SEPOLICY_DIRS += \
    $(COMMON_PATH)/sepolicy/vendor
