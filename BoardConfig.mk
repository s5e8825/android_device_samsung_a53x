#
# Copyright (C) 2020-2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

## Inherit from the common tree
include device/samsung/universal8825-common/BoardConfigCommon.mk

## Inherit from the proprietary configuration
include vendor/samsung/a53x/BoardConfigVendor.mk

DEVICE_PATH := device/samsung/a53x

## APEX image
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Display
TARGET_SCREEN_DENSITY := 450

# DTBO
BOARD_DTBO_CFG := $(DEVICE_PATH)/configs/kernel/$(TARGET_DEVICE).cfg

# Kernel
TARGET_KERNEL_CONFIG := lineage_a53x_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/a53x

# OTA assert
TARGET_OTA_ASSERT_DEVICE := a53x

# File systems
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE   := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE   := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE  := ext4
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE      := ext4
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE    := ext4

BOARD_USES_METADATA_PARTITION        := true
TARGET_USERIMAGES_USE_F2FS           := true
TARGET_USERIMAGES_USE_EXT4           := true

# Partitions
BOARD_SUPER_PARTITION_SIZE := 11744051200
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 11744051196 # BOARD_SUPER_PARTITION_SIZE-4MiB
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product odm vendor_dlkm

BOARD_FLASH_BLOCK_SIZE := 262144

# Partitions sizes
BOARD_DTBOIMG_PARTITION_SIZE       	:= 8388608
BOARD_BOOTIMAGE_PARTITION_SIZE		:= 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE 	:= 100663296
BOARD_CACHEIMAGE_PARTITION_SIZE    	:= 629145600

# Out dirs
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_VENDOR_DLKM := vendor_dlkm
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_ODM := odm

## Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
