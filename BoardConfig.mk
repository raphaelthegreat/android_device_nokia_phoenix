#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/nokia/phoenix
BOARD_VENDOR := nokia

# Bootloader
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := sdm710
TARGET_BOARD_PLATFORM_GPU := qcom-adreno616

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Security patch level
VENDOR_SECURITY_PATCH := 2021-05-01

-include vendor/nokia/phoenix/BoardConfigVendor.mk