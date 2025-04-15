#
# SPDX-FileCopyrightText: 2022-2024 The infinity Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/hawao/device.mk)

# Inherit some common infinity stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := infinity_hawao
PRODUCT_DEVICE := hawao
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g42
PRODUCT_MANUFACTURER := motorola

# Maintainer Name
 INFINITY_MAINTAINER := "Helloisnotadevsadly"

# infinity_x Flags
 TARGET_BOOT_ANIMATION_RES := 1080
 TARGET_ENABLE_BLUR := false 
 TARGET_HAS_UDFPS := false
 WITH_GAPPS := true

# Quick Tap
 TARGET_SUPPORTS_QUICK_TAP := true

# Whether the compiled package ships Complete present Google Apps:
 TARGET_SHIPS_FULL_GAPPS := true 

# Whether the compiled shipped gapps package uses Google Dialer, Messaging, Contacts:
 TARGET_BUILD_GOOGLE_TELEPHONY := true

 # Whether the compiled package ships Moto Calculator irrespective VANILLA or GAPPS:
 USE_MOTO_CALCULATOR := true

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="hawao_g-user 13 T2SES33.73-23-2-13 273c8-da10c release-keys" \
    BuildFingerprint=motorola/hawao_g/hawao:13/T2SES33.73-23-2-13/273c8-da10c:user/release-keys \
    DeviceProduct=hawao_g
