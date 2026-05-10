#
# SPDX-FileCopyrightText: 2021-2024 The LineageOS Project
# SPDX-FileCopyrightText: 2021-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Kernel modules
BOARD_VENDOR_KERNEL_RAMDISK_KERNEL_MODULES_BLOCKLIST_FILE := $(DEVICE_PATH)/modules.blocklist.vendor_kernel_boot
BOARD_VENDOR_KERNEL_RAMDISK_KERNEL_MODULES_LOAD_RAW := $(strip $(shell cat $(DEVICE_PATH)/modules.load.vendor_kernel_boot))
BOARD_VENDOR_KERNEL_RAMDISK_KERNEL_MODULES_LOAD += $(BOARD_VENDOR_KERNEL_RAMDISK_KERNEL_MODULES_LOAD_RAW)
BOARD_VENDOR_KERNEL_RAMDISK_KERNEL_MODULES += $(addprefix $(KERNEL_MODULE_DIR)/, $(notdir $(BOARD_VENDOR_KERNEL_RAMDISK_KERNEL_MODULES_LOAD_RAW)))
TARGET_KERNEL_CONFIG := pantah_defconfig
#$(info TARGET_KERNEL_DIR=$(TARGET_KERNEL_DIR))
#$(info BOARD_PREBUILT_BOOTIMAGE=$(BOARD_PREBUILT_BOOTIMAGE))
TARGET_KERNEL_SOURCE := kernel/google/pantah/panther
TARGET_KERNEL_EXT_MODULE_ROOT := private/google-modules
TARGET_KERNEL_EXT_MODULES := \
    amplifiers/audiometrics \
    amplifiers/cs35l41 \
    amplifiers/cs35l45 \
    amplifiers/cs40l26 \
    amplifiers/snd_soc_wm_adsp \
    aoc \
    bluetooth/broadcom \
    bluetooth/qcom \
    bms \
    display/samsung \
    edgetpu/janeiro \
    fingerprint/fpc \
    gpu/mali_kbase \
    gpu/mali_pixel \
    gxp/gs201 \
    hdcp/samsung \
    lwis \
    misc/sscoredump \
    nfc \
    power/mitigation \
    power/reset \
    sensors/hall_sensor \
    soc/gs \
    touch/common \
    touch/goodix \
    touch/sec \
    trusty \
    video/gchips \
    wlan/bcm4389 \
    wlan/wlan_ptracker
