#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/nokia/phoenix
BOARD_VENDOR := nokia

# Bootloader
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8 earlycon=msm_geni_serial,0xA90000 androidboot.hardware=qcom 
BOARD_KERNEL_CMDLINE += androidboot.console=ttyMSM0 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 
BOARD_KERNEL_CMDLINE += ehci-hcd.park=3 lpm_levels.sleep_disabled=1 service_locator.enable=1 androidboot.configfs=true
BOARD_KERNEL_CMDLINE += androidboot.usbcontroller=a600000.dwc3 swiotlb=1 loop.max_part=7 androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000

TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/nokia/sdm710
TARGET_KERNEL_CONFIG := pnx-perf_defconfig

# Platform
TARGET_BOARD_PLATFORM := sdm710
TARGET_BOARD_PLATFORM_GPU := qcom-adreno616

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Security patch level
VENDOR_SECURITY_PATCH := 2021-05-01

-include vendor/nokia/phoenix/BoardConfigVendor.mk