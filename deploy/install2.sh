#!/bin/bash

# 基本工具集
pacman -S --needed --noconfirm base-devel

pacman -S --needed --noconfirm git openssh
systemctl enable sshd

pacman -S --needed --noconfirm curl wget aria2
pacman -S --needed --noconfirm zip unzip p7zip

# 外设
## USB
pacman -S --needed --noconfirm usb_modeswitch usbutils
## 网络
pacman -S --needed --noconfirm networkmanager iwd dhcpcd
systemctl enable iwd
systemctl enable dhcpcd
## 蓝牙
pacman -S --needed --noconfirm bluez bluez-utils blueman
systemctl enable bluetooth
## 音频
pacman -S --needed --noconfirm pipewire pipewire-alsa pipewire-pulse pipewire-jack wireplumber pavucontrol
## 显示背光
pacman -S --needed --noconfirm brightnessctl



# 窗口管理器及其生态
#===============================
## greetd
pacman -S --needed --noconfirm greetd greetd-tuigreet
## sway
pacman -S --needed --noconfirm sway swaybg sway-contrib
## hyprland
pacman -S --needed --noconfirm hyprland hyprpaper hyprlock
## bar
pacman -S --needed --noconfirm waybar
## polkit
pacman -S --needed --noconfirm polkit hyprpolkitagent polkit-gnome
## 通知组件
pacman -S --needed --noconfirm mako libnotify
## 剪切板支持
pacman -S --needed --noconfirm wl-clipboard cliphist
## 启动器
pacman -S --needed --noconfirm fuzzel rofi swappy

# 应用程序
#===========================
## 终端模拟器
pacman -S --needed --noconfirm alacritty
## shell
pacman -S --needed --noconfirm fish
## cli工具集
pacman -S --needed --noconfirm yazi lazygit
pacman -S --needed --noconfirm helix
pacman -S --needed --noconfirm fzf pacman-contrib
### 仪表盘
pacman -S --needed --noconfirm btop fastfetch
#-----------
## 输入法
pacman -S --needed --noconfirm fcitx5-im fcitx5-chinese-addons
## 浏览器
pacman -S --needed --noconfirm firefox
## 字体管理器及字体
pacman -S --needed --noconfirm font-manager ttf-0xproto-nerd wqy-zenhei
