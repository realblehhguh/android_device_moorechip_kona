# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0

# Local vendor blob definitions for TWRP recovery
# This file includes essential vendor blobs directly in the device tree

LOCAL_PATH := device/moorechip/kona

# Essential decryption binaries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/moorechip/kona/proprietary/bin/qseecomd:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/bin/qseecomd \
    $(LOCAL_PATH)/vendor/moorechip/kona/proprietary/bin/hw/android.hardware.keymaster@4.0-service-qti:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/bin/hw/android.hardware.keymaster@4.0-service-qti \
    $(LOCAL_PATH)/vendor/moorechip/kona/proprietary/bin/hw/android.hardware.gatekeeper@1.0-service-qti:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/bin/hw/android.hardware.gatekeeper@1.0-service-qti

# Essential crypto libraries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/moorechip/kona/proprietary/lib/libdrmfs.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/libdrmfs.so \
    $(LOCAL_PATH)/vendor/moorechip/kona/proprietary/lib64/libdrmfs.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libdrmfs.so \
    $(LOCAL_PATH)/vendor/moorechip/kona/proprietary/lib/libdrmtime.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/libdrmtime.so \
    $(LOCAL_PATH)/vendor/moorechip/kona/proprietary/lib64/libdrmtime.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libdrmtime.so \
    $(LOCAL_PATH)/vendor/moorechip/kona/proprietary/lib/libqmi_cci.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/libqmi_cci.so \
    $(LOCAL_PATH)/vendor/moorechip/kona/proprietary/lib64/libqmi_cci.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libqmi_cci.so \
    $(LOCAL_PATH)/vendor/moorechip/kona/proprietary/lib/libqmi_common_so.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/libqmi_common_so.so \
    $(LOCAL_PATH)/vendor/moorechip/kona/proprietary/lib64/libqmi_common_so.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libqmi_common_so.so

# Essential GPU libraries for TWRP UI
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/moorechip/kona/proprietary/lib/egl/libEGL_adreno.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/egl/libEGL_adreno.so \
    $(LOCAL_PATH)/vendor/moorechip/kona/proprietary/lib64/egl/libEGL_adreno.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/egl/libEGL_adreno.so \
    $(LOCAL_PATH)/vendor/moorechip/kona/proprietary/lib/egl/libGLESv2_adreno.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/egl/libGLESv2_adreno.so \
    $(LOCAL_PATH)/vendor/moorechip/kona/proprietary/lib64/egl/libGLESv2_adreno.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/egl/libGLESv2_adreno.so

# GPU firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/moorechip/kona/proprietary/firmware/a650_gmu.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/a650_gmu.bin \
    $(LOCAL_PATH)/vendor/moorechip/kona/proprietary/firmware/a650_sqe.fw:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/a650_sqe.fw