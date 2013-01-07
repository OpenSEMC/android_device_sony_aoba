USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/sony/aoba/BoardConfigVendor.mk

#inherit from the common fuji definitions
-include device/sony/fuji-common/BoardConfigCommon.mk

TARGET_KERNEL_CONFIG := cyanogen_fuji_csfb_aoba_defconfig

# Partition information
BOARD_VOLD_MAX_PARTITIONS := 18

# the following two sizes are generous guesses
# since these partitions are not visible
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000

# Recovery
TARGET_RECOVERY_INITRC := device/sony/aoba/recovery/init.rc
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1056964608
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p18

TARGET_OTA_ASSERT_DEVICE := LT26w,aoba
