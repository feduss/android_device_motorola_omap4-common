# Copyright (C) 2015 The CyanogenMod Project
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

LOCAL_PATH := $(call my-dir)

# VectorImpl

include $(CLEAR_VARS)

LU_PATH := system/core/libutils
LOC_PATH := device/motorola/omap4-common/libmotou

LOCAL_MODULE := libmotou
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES += \
	external/safe-iop/include \
	system/core/libutils

LOCAL_SHARED_LIBRARIES := libbacktrace libcutils libdl liblog libutils

include $(BUILD_SHARED_LIBRARY)
