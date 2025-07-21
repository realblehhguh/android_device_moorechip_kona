#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
    $(LOCAL_PATH)/init.recovery.qcom_decrypt.rc:root/init.recovery.qcom_decrypt.rc

ifeq ($(TARGET_DEVICE),kona)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
