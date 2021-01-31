#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_KERNEL_PATH := device/xiaomi/apollo-kernel

# Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_KERNEL_PATH)/prebuilts/Image

# DTB
TARGET_PREBUILT_DTB := $(DEVICE_KERNEL_PATH)/prebuilts/dtb.img
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
PRODUCT_COPY_FILES += \
    $(DEVICE_KERNEL_PATH)/prebuilts/dtb.img:$(TARGET_COPY_OUT)/dtb.img \

# DTBO
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_KERNEL_PATH)/prebuilts/dtbo.img
