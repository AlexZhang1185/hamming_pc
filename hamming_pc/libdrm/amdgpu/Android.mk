LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

# Import variables LIBDRM_AMDGPU_FILES, LIBDRM_AMDGPU_H_FILES
include $(LOCAL_PATH)/Makefile.sources

LOCAL_MODULE := libdrm_amdgpu
LOCAL_MODULE_TAGS := optional

LOCAL_SHARED_LIBRARIES := libdrm

LOCAL_SRC_FILES := $(filter-out %.h,$(LIBDRM_AMDGPU_FILES))
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)

LOCAL_CFLAGS := \
	-DHAVE_LIBDRM_ATOMIC_PRIMITIVES=1 \
    -DAMDGPU_ASIC_ID_TABLE=\"/etc/hwdata/amdgpu.ids\"


include $(BUILD_SHARED_LIBRARY)

