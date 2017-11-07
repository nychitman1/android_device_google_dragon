
# Copyright (C) 2013-2017 The Dirty Unicorns Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file is the build configuration for an aosp Android
# build for flounder hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, aosp and flounder, hence its name.
#

# Inherit from those products. Most specific first.
$(call inherit-product, device/google/dragon/aosp_dragon.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/du/config/common_full_tablet_wifionly.mk)

PRODUCT_NAME := du_dragon
PRODUCT_DEVICE := dragon
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel C
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=dragon \
    BUILD_FINGERPRINT=google/ryu/dragon:8.0.0/OPR1.170623.027/4292972:user/release-keys \
    PRIVATE_BUILD_DESC="ryu-user 8.0.0 OPR1.170623.027 4292972 release-keys"