#!/bin/bash

# 下载最新版本cmdline-tools
# wget ...

unzip cmdline-tools -d $HOME/androidSDK

mkdir $HOME/androidSDK/latest
mv $HOME/androidSDK/cmdline-tools/* $HOME/androidSDK/latest
mv $HOME/androidSDK/latest $HOME/androidSDK/cmdline-tools
