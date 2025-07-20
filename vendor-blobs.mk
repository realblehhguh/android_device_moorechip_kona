# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0

# Local vendor blob definitions for TWRP recovery
# This file includes essential vendor blobs directly in the device tree

LOCAL_PATH := device/moorechip/kona

# Essential decryption binaries - using prebuilt modules
PRODUCT_PACKAGES += \
    qseecomd \
    android.hardware.keymaster@4.0-service-qti \
    android.hardware.gatekeeper@1.0-service-qti

# Essential crypto libraries - using prebuilt modules
PRODUCT_PACKAGES += \
    libdrmfs \
    libdrmtime \
    libqmi_cci \
    libqmi_common_so

# Essential GPU libraries for TWRP UI - using prebuilt modules
PRODUCT_PACKAGES += \
    libEGL_adreno \
    libGLESv2_adreno

# GPU firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/moorechip/kona/recovery/root/vendor/firmware/a650_gmu.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/a650_gmu.bin \
    $(LOCAL_PATH)/vendor/moorechip/kona/recovery/root/vendor/firmware/a650_sqe.fw:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/a650_sqe.fw