# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),kona)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor_blobs
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := FAKE
LOCAL_MODULE_SUFFIX := -timestamp
include $(BUILD_SYSTEM)/base_rules.mk
$(LOCAL_BUILT_MODULE): $(LOCAL_PATH)/proprietary-files.mk
	@echo "Vendor blobs: $@"
	$(hide) touch $@

include $(LOCAL_PATH)/proprietary-files.mk

endif