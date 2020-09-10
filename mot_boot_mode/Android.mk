LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := mot_boot_mode.c
LOCAL_SHARED_LIBRARIES := libutils libcutils libc
LOCAL_LDLIBS := -llog \
                -landroid
LOCAL_MODULE_TAGS:= optional
LOCAL_MODULE := mot_boot_mode
include $(BUILD_EXECUTABLE)
