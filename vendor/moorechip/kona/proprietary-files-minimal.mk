# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0

# This file contains only essential vendor blobs for TWRP recovery

PRODUCT_SOONG_NAMESPACES += \
    vendor/moorechip/kona

# Essential decryption binaries
PRODUCT_COPY_FILES += \
    vendor/moorechip/kona/proprietary/bin/qseecomd:$(TARGET_COPY_OUT_VENDOR)/bin/qseecomd \
    vendor/moorechip/kona/proprietary/bin/hw/android.hardware.gatekeeper@1.0-service-qti:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.gatekeeper@1.0-service-qti \
    vendor/moorechip/kona/proprietary/bin/hw/android.hardware.keymaster@4.0-service-qti:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.keymaster@4.0-service-qti \
    vendor/moorechip/kona/proprietary/lib/libdrmfs.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdrmfs.so \
    vendor/moorechip/kona/proprietary/lib64/libdrmfs.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdrmfs.so \
    vendor/moorechip/kona/proprietary/lib/libdrmtime.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdrmtime.so \
    vendor/moorechip/kona/proprietary/lib64/libdrmtime.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdrmtime.so \
    vendor/moorechip/kona/proprietary/lib/libloc_core.so:$(TARGET_COPY_OUT_VENDOR)/lib/libloc_core.so \
    vendor/moorechip/kona/proprietary/lib64/libloc_core.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libloc_core.so \
    vendor/moorechip/kona/proprietary/lib/egl/eglSubDriverAndroid.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/eglSubDriverAndroid.so \
    vendor/moorechip/kona/proprietary/lib64/egl/eglSubDriverAndroid.so:$(TARGET_COPY_OUT_VENDOR)/lib64/egl/eglSubDriverAndroid.so \
    vendor/moorechip/kona/proprietary/lib/egl/libEGL_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libEGL_adreno.so \
    vendor/moorechip/kona/proprietary/lib64/egl/libEGL_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib64/egl/libEGL_adreno.so \
    vendor/moorechip/kona/proprietary/lib/egl/libGLESv1_CM_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libGLESv1_CM_adreno.so \
    vendor/moorechip/kona/proprietary/lib64/egl/libGLESv1_CM_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib64/egl/libGLESv1_CM_adreno.so \
    vendor/moorechip/kona/proprietary/lib/egl/libGLESv2_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libGLESv2_adreno.so \
    vendor/moorechip/kona/proprietary/lib64/egl/libGLESv2_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib64/egl/libGLESv2_adreno.so \
    vendor/moorechip/kona/proprietary/lib/egl/libq3dtools_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libq3dtools_adreno.so \
    vendor/moorechip/kona/proprietary/lib64/egl/libq3dtools_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib64/egl/libq3dtools_adreno.so \
    vendor/moorechip/kona/proprietary/lib/libperipheral_client.so:$(TARGET_COPY_OUT_VENDOR)/lib/libperipheral_client.so \
    vendor/moorechip/kona/proprietary/lib64/libperipheral_client.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libperipheral_client.so \
    vendor/moorechip/kona/proprietary/lib/libqmi_cci.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqmi_cci.so \
    vendor/moorechip/kona/proprietary/lib64/libqmi_cci.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqmi_cci.so \
    vendor/moorechip/kona/proprietary/lib/libqmi_common_so.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqmi_common_so.so \
    vendor/moorechip/kona/proprietary/lib64/libqmi_common_so.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqmi_common_so.so \
    vendor/moorechip/kona/proprietary/lib/libril-qc-hal-qmi.so:$(TARGET_COPY_OUT_VENDOR)/lib/libril-qc-hal-qmi.so \
    vendor/moorechip/kona/proprietary/lib64/libril-qc-hal-qmi.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libril-qc-hal-qmi.so \
    vendor/moorechip/kona/proprietary/lib/librilutils.so:$(TARGET_COPY_OUT_VENDOR)/lib/librilutils.so \
    vendor/moorechip/kona/proprietary/lib64/librilutils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/librilutils.so \
    vendor/moorechip/kona/proprietary/lib/libthermalclient.so:$(TARGET_COPY_OUT_VENDOR)/lib/libthermalclient.so \
    vendor/moorechip/kona/proprietary/lib64/libthermalclient.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libthermalclient.so \
    vendor/moorechip/kona/proprietary/lib/libtime_genoff.so:$(TARGET_COPY_OUT_VENDOR)/lib/libtime_genoff.so \
    vendor/moorechip/kona/proprietary/lib64/libtime_genoff.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libtime_genoff.so \
    vendor/moorechip/kona/proprietary/firmware/a650_gmu.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/a650_gmu.bin \
    vendor/moorechip/kona/proprietary/firmware/a650_sqe.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/a650_sqe.fw \
    vendor/moorechip/kona/proprietary/firmware/slpi.mdt:$(TARGET_COPY_OUT_VENDOR)/firmware/slpi.mdt \
    vendor/moorechip/kona/proprietary/etc/permissions/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    vendor/moorechip/kona/proprietary/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    vendor/moorechip/kona/proprietary/etc/permissions/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    vendor/moorechip/kona/proprietary/etc/permissions/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml