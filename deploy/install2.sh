#!/bin/bash

# 基本工具集
pacman -S base-devel

pacman -S git openssh
systemctl enable sshd

pacman -S curl wget aria2
pacman -S zip unzip p7zip

# 外设
## USB
pacman -S usb_modeswitch usbutils
## 网络
pacman -S networkmanager iwd dhcpcd --needed
systemctl enable iwd
systemctl enable dhcpcd
## 蓝牙
pacman -S bluez bluez-utils blueman
systemctl enable bluetooth
## 音频
pacman -S pipewire pipewire-alsa pipewire-pulse pipewire-jack wireplumber pavucontrol
## 显示背光
pacman -S brightnessctl



# 窗口管理器及其生态
#===============================
## sway
pacman -S sway swaybg \
  sway-contrib
## hyprland
pacman -S hyprland hyprpaper hyprlock
## bar
pacman -S waybar
## polkit
pacman -S polkit hyprpolkitagent polkit-gnome
## 通知组件
pacman -S mako libnotify inotify-tools
## 剪切板支持
pacman -S wl-clipboard cliphist
## 启动器
pacman -S fuzzel rofi swappy

# 应用程序
#===========================
## 终端模拟器
pacman -S alacritty
## shell
pacman -S fish
## cli工具集
pacman -S yazi lazygit
pacman -S helix
### 仪表盘
pacman -S btop fastfetch
#-----------
## 输入法
pacman -S fcitx5-im fcitx5-chinese-addons
## 浏览器
pacman -S firefox
## 字体管理器及字体
pacman -S font-manager wqy-zenhei
