#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm855-common
-include device/xiaomi/sdm855-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/cepheus

# Assert
TARGET_OTA_ASSERT_DEVICE := cepheus

# Camera
# TARGET_FACE_UNLOCK_CAMERA_ID := 5

# Kernel
#TARGET_PREBUILT_KERNEL := device/xiaomi/cepheus/Image-dtb
TARGET_KERNEL_CONFIG := cepheus_user_defconfig

# HIDL
DEVICE_FRAMEWORK_MANIFEST_FILE += $(DEVICE_PATH)/framework_manifest.xml

# NFC
TARGET_USES_NQ_NFC := true

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472 #3072M
BOARD_CACHEIMAGE_PARTITION_SIZE := 243236864 #232M
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864 #64M
BOARD_USERDATAIMAGE_PARTITION_SIZE := 54760833024 #52224M

# Power
# TARGET_TAP_TO_WAKE_NODE := "/dev/input/event3"

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Inherit from the proprietary version
-include vendor/xiaomi/cepheus/BoardConfigVendor.mk

# Sepolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private
