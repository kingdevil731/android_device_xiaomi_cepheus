#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/xiaomi/cepheus/cepheus-vendor.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Properties
-include $(LOCAL_PATH)/device-props.mk

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Inherit from sdm855-common
$(call inherit-product, device/xiaomi/sdm855-common/sdm855.mk)

# Inherit cepheus vendor
$(call inherit-product-if-exists, vendor/xiaomi/cepheus/cepheus-vendor.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/vendor/init.msm.usb.configfs.rc:vendor/init/hw/init.msm.usb.configfs.rc \
    $(LOCAL_PATH)/rootdir/vendor/init.qcom.factory.rc:vendor/init/hw/init.qcom.factory.rc \
    $(LOCAL_PATH)/rootdir/vendor/init.qcom.rc:vendor/init/hw/init.qcom.rc \
    $(LOCAL_PATH)/rootdir/vendor/init.qcom.usb.rc:vendor/init/hw/init.qcom.usb.rc \
    $(LOCAL_PATH)/rootdir/vendor/init.target.rc:vendor/init/hw/init.target.rc \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:vendor/etc/fstab.qcom \
    $(LOCAL_PATH)/rootdir/init.batteryd.rc:$(TARGET_ROOT_OUT)/init.batteryd.rc \
    $(LOCAL_PATH)/rootdir/init.recovery.qcom.rc:$(TARGET_ROOT_OUT)init.recovery.qcom.rc \
    $(LOCAL_PATH)/rootdir/init.usb.configfs.rc:$(TARGET_ROOT_OUT)init.usbconfigfs.rc


# HIDL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/manifest.xml:system/etc/manifest.xml

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/uinput-fpc.idc:system/usr/idc/uinput-fpc.idc \
    $(LOCAL_PATH)/idc/uinput-goodix.idc:system/usr/idc/uinput-goodix.idc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/uinput-fpc.kl:system/usr/keylayout/uinput-fpc.kl \
    $(LOCAL_PATH)/keylayout/uinput-goodix.kl:system/usr/keylayout/uinput-goodix.kl

# LiveDisplay
PRODUCT_PACKAGES += \
    lineage.livedisplay@2.0-service.xiaomi_sdm855

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    com.nxp.nfc.nq \
    nqnfcee_access.xml \
    nqnfcse_access.xml \
    NQNfcNci \
    SecureElement \
    Tag

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/libnfc-nci.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/libnfc-nci.conf \
    $(LOCAL_PATH)/nfc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf

# PocketMode
PRODUCT_PACKAGES += \
    XiaomiPocketMode

