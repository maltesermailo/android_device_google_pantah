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
    trusty \
    bms/misc \
    soc/gs \
    bms \
    power/mitigation \
    power/reset \
    amplifiers/audiometrics \
    amplifiers/snd_soc_wm_adsp \
    amplifiers/cs35l41 \
    amplifiers/cs35l45 \
    amplifiers/cs40l26 \
    aoc \
    display/common/gs_drm \
    display/samsung \
    display/common/gs_panel \
    hdcp/samsung \
    touch/common \
    touch/goodix \
    touch/sec \
    aoc/alsa \
    bluetooth/broadcom \
    bluetooth/qcom \
    edgetpu/janeiro \
    fingerprint/fpc \
    gpu/mali_pixel \
    gpu/mali_kbase \
    gxp/gs201 \
    lwis \
    misc/sscoredump \
    nfc \
    sensors/hall_sensor \
    video/gchips \
    wlan/bcm4389 \
    wlan/wlan_ptracker

TARGET_BOARD_KERNEL_HEADERS := device/google/pantah-kernels/6.1/25Q1-13202328/kernel-headers
TARGET_PREBUILT_KERNEL_HEADERS := device/google/pantah-kernels/6.1/25Q1-13202328/kernel-uapi-headers.tar.gz
