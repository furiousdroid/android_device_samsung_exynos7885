COMMON_PATH := device/samsung/universal7885B-common
# Keymaster
TARGET_KEYMASTER_VARIANT := samsung

BOARD_SEPOLICY_TEE_FLAVOR := teegris

BOARD_VENDOR_SEPOLICY_DIRS += \
    $(COMMON_PATH)/sepolicy/vendor
