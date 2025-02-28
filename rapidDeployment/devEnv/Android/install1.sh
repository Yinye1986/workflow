#!/bin/bash

# 安装SDK(lib, ...)
sdkmanager "platforms;android-33"


# 安装平台工具(adb, fastboot, ...)
sdkmanager "platform-tools"
# 安装Emulator
sdkmanager "emulator"
# 安装build-tools
sdkmanager "build-tools;33.0.3"


# 创建AVD
avdmanager create avd -n MyPixel4 -k "system-images;android-33;google_apis;x86_64" -d pixel_4
# 启动AVD
emulator -avd MyPixel4


# 更新
sdkmanager --update
