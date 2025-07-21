#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/moorechip/kona
PRODUCT_RELEASE_NAME := kona
PRODUCT_SHIPPING_API_LEVEL := 30
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true \
    ENABLE_VIRTUAL_AB := true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service

PRODUCT_PACKAGES += \
    bootctrl.kona

# Boot control HAL shared libraries
PRODUCT_PACKAGES += \
    libgptutils \
    libz \
    libcutils

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload \
    libapexsupport
# crypto 
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# fastbootd
PRODUCT_PACKAGES += \
	android.hardware.fastboot@1.0-impl-mock \
	android.hardware.fastboot@1.0-impl-mock.recovery \
	fastbootd
    
PRODUCT_COPY_FILES += \
    device/moorechip/kona/vendor.prop:system/vendor/vendor.prop

# System Properties Override
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.version.release=13 \
    ro.build.version.sdk=33 \
    ro.build.version.security_patch=2024-07-05

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
	$(LOCAL_PATH)




