LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := box2D-prebuilt
LOCAL_SRC_FILES := ../Box2D/libs/$(TARGET_ARCH_ABI)/libbox2D.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/..
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := box2DHello
# LOCAL_C_INCLUDES := $(LOCAL_PATH)/..
LOCAL_SRC_FILES := \
	$(subst $(LOCAL_PATH)/,, \
        $(wildcard $(LOCAL_PATH)/*.c) \
	$(wildcard $(LOCAL_PATH)/*.cpp))
LOCAL_LDLIBS := -lm -llog
LOCAL_SHARED_LIBRARIES := box2D-prebuilt
include $(BUILD_SHARED_LIBRARY)
