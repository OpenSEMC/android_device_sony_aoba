USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/sony/aoba/BoardConfigVendor.mk

#inherit from the common fuji definitions
-include device/sony/fuji-common/BoardConfigCommon.mk

TARGET_KERNEL_CONFIG := opensemc_fuji_aoba_defconfig

# Sony-supplied broadcom wlan module
BOARD_WLAN_BROADCOM := true

# Custom bluedroid includes
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/sony/aoba/bluetooth

# Partition information
BOARD_VOLD_MAX_PARTITIONS := 18

# the following two sizes are generous guesses
# since these partitions are not visible
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000

# Recovery
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_FSTAB := device/sony/aoba/config/fstab.semc
TARGET_RECOVERY_INITRC := device/sony/aoba/recovery/init.rc
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1056964608
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p18

TARGET_OTA_ASSERT_DEVICE := LT28h,LT28i,aoba

# CM Hardware tunables
BOARD_HARDWARE_CLASS += device/sony/aoba/cmhw
