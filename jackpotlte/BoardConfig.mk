DEVICE_PATH := device/samsung/jackpotlte

# Include
TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Asserts
TARGET_OTA_ASSERT_DEVICE := jackpotlte

# Kernel
TARGET_KERNEL_CONFIG := exynos7885-jackpotlte_defconfig
TARGET_KERNEL_RECOVERY_CONFIG := exynos7885-jackpotlte-recovery_defconfig

# Device Tree
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos
BOARD_USES_DT := true

BOARD_KERNEL_CMDLINE := loop.max_part=7
BOARD_KERNEL_SEPARATED_DT := true
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
BOARD_SECOND_OFFSET := 0x00f00000
BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_SECOND_OFFSET)

# Display
TARGET_SCREEN_DENSITY := 441

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 39845888
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3790285312
BOARD_CACHEIMAGE_PARTITION_SIZE := 157286400
BOARD_VENDORIMAGE_PARTITION_SIZE   := 437851136

# Inherit common board flags
include device/samsung/universal7885-common/BoardConfigCommon.mk

# FSTABs
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/recovery.fstab

# SPL
VENDOR_SECURITY_PATCH := 2021-06-01

TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
