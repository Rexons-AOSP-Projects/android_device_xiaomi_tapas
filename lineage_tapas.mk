#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from tapas device
$(call inherit-product, device/xiaomi/tapas/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)


PRODUCT_NAME := lineage_tapas
PRODUCT_DEVICE := tapas
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 12 4G
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_AXFX := false
AXION_CAMERA_REAR_INFO := 50,8,2
AXION_CAMERA_FRONT_INFO := 13
AXION_MAINTAINER := Kolass_rexon
AXION_PROCESSOR := Snapdragon_685
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="tapas_global-user 15 AQ3A.240829.003 OS2.0.205.0.VMTMIXM release-keys" \
    BuildFingerprint=Redmi/tapas_global/tapas:15/AQ3A.240829.003/OS2.0.205.0.VMTMIXM:user/release-keys \
    DeviceProduct=tapas

