LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CLANG := true
LOCAL_CFLAGS := -Wno-unused-parameter -Wno-tautological-compare \
                -DPCIIDS_PATH=\"/etc/hwdata\" \
                -Wno-implicit-function-declaration

LOCAL_SRC_FILES := \
    src/common_bridge.c \
    src/common_iterator.c \
    src/common_init.c \
    src/common_interface.c \
    src/common_io.c \
    src/common_capability.c \
    src/common_device_name.c \
    src/common_map.c \
    src/linux_sysfs.c \
    src/linux_devmem.c \
    src/common_vgaarb.c

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/include

LOCAL_MODULE := libpciaccess
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := pci.ids
LOCAL_SRC_FILES := hwdata/pci.ids
LOCAL_MODULE_CLASS = ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/hwdata
include $(BUILD_PREBUILT)
