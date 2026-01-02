#!bin/bash

pacman -S arm-none-eabi-gcc arm-none-eabi-newlib arm-none-eabi-binutils arm-none-eabi-gdb stlink openocd
yay -S stm32flash

# 需要在CMakeLists.txt或其他工具中指定工具链为arm-none-eabi-toolchain
# 需要在.clangd中明确项目使用arm-none-eabi-newlib做为系统库; 而非其他x86_64平台的库
