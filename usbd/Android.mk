LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := usb_app.c          
LOCAL_MODULE:= usbd
LOCAL_CFLAGS := -Wall -g  -O2 -fno-short-enums
ifeq ($(BOARD_USES_MSDCDROM),true)
LOCAL_CFLAGS += -DMSD_CDROM_ENABLED
endif

ifeq ($(strip $(TARGET_USES_AT_RELAY)),true)
LOCAL_CFLAGS += -DAT_RELAY
endif

ifdef BOARD_CDROM_BLOCK_DEVICE
LOCAL_CFLAGS += -DCDROM_BLOCK_DEVICE=\"$(BOARD_CDROM_BLOCK_DEVICE)\"
endif

ifdef BOARD_CDROM_DEVICE_FILE
LOCAL_CFLAGS += -DCDROMIO_DEVNODE=\"$(BOARD_CDROM_DEVICE_FILE)\"
endif

ifeq ($(BOARD_USBD_TABLET_MODE),true)
LOCAL_CFLAGS += -DUSBD_TABLET_MODE
endif

ifeq ($(TARGET_BOARD_PLATFORM),msm7k)
LOCAL_CFLAGS += -DMSM_USB
endif

LOCAL_SHARED_LIBRARIES := libutils libcutils libc
LOCAL_LDLIBS := -llog \
                -landroid

include $(BUILD_EXECUTABLE)
