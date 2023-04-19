#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
APP_ANDROID_ROOT=$DIR
COCOS2D_X_ROOT=${APP_ANDROID_ROOT}/../cocos/frameworks/0cocos2d-x
COCOS2D_X_COCOS=${COCOS2D_X_ROOT}/cocos
COCOS2D_X_EXTERNAL=${COCOS2D_X_ROOT}/external
# PROTOBUF_ROOT=${APP_ANDROID_ROOT}/../../../protobuf

echo "APP_ANDROID_ROOT=$APP_ANDROID_ROOT"


# echo "clear so files..."
# rm -rf $DIR/libs/armeabi/*.so

# echo "clear jar files..."
# rm -rf $DIR/libs/*.jar


"${NDK_ROOT}"/ndk-build NDK_DEBUG=0 -C "${APP_ANDROID_ROOT}" $* \
"NDK_MODULE_PATH=${COCOS2D_X_ROOT}:${COCOS2D_X_COCOS}:${COCOS2D_X_EXTERNAL}"
 # "NDK_MODULE_PATH=${COCOS2D_X_ROOT}:${COCOS2D_X_COCOS}:${COCOS2D_X_EXTERNAL}:${PROTOBUF_ROOT}"

