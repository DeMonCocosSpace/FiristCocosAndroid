LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cocos2djs

LOCAL_MODULE_FILENAME := libcocos2djs

ifeq ($(USE_ARM_MODE),1)
LOCAL_ARM_MODE := arm
endif

LOCAL_SRC_FILES := cpp/main.cpp \
				   ../../cocos/frameworks/runtime-src/Classes/AppDelegate.cpp \
				   ../../cocos/frameworks/runtime-src/Classes/jsb_module_register.cpp \

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../cocos/frameworks/runtime-src/Classes

LOCAL_STATIC_LIBRARIES := cocos2dx_static

include $(BUILD_SHARED_LIBRARY)

$(call import-module, cocos)
