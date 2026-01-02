#!/bin/bash

# 基本工具集
pacman -S --needed --noconfirm base-devel

pacman -S --needed --noconfirm git openssh
systemctl enable sshd

pacman -S --needed --noconfirm curl wget aria2
pacman -S --needed --noconfirm zip unzip p7zip
pacman -S --needed --noconfirm man-db tealdeer

# 外设
## 音频
pacman -S --needed --noconfirm pipewire pipewire-alsa pipewire-pulse pipewire-jack wireplumber pavucontrol rtkit
systemctl enable rtkit-daemon.service
## 网络
pacman -S --needed --noconfirm networkmanager network-manager-applet
## 蓝牙
pacman -S --needed --noconfirm bluez bluez-utils
systemctl enable bluetooth
## 亮度控制
pacman -S --needed --noconfirm brightnessctl
## USB
# pacman -S --needed --noconfirm usb_modeswitch usbutils



# 窗口管理器及其生态
#===============================
## greet (需要修改配置文件 command="tuigreet --cmd niri-session")
# sudo pacman -S --needed --noconfirm greetd greetd-tuigreet
# systemctl enable greetd
## 兼容层 (有的 wm 自启动, 有的自己启动, niri使用 xwayland-satellite 作为包装)
pacman -S --needed --noconfirm xorg-xwayland
## sway
# pacman -S --needed --noconfirm sway swaybg
## hyprland
# pacman -S --needed --noconfirm hyprland hyprpaper hyprlock
## niri
pacman -S --needed --noconfirm niri swaybg
## bar
pacman -S --needed --noconfirm waybar
## polkit (需要在 wm 启动时启动, 一般在 wm 配置文件中配置自启动)
pacman -S --needed --noconfirm polkit polkit-gnome
## 通知组件
pacman -S --needed --noconfirm libnotify mako
## 剪切板支持
pacman -S --needed --noconfirm wl-clipboard cliphist
## 启动器
pacman -S --needed --noconfirm fuzzel
## 截图
pacman -S --needed --noconfirm grim slurp swappy


# 应用程序
#===========================
## 终端模拟器
pacman -S --needed --noconfirm alacritty
## shell
pacman -S --needed --noconfirm fish
## cli工具集
pacman -S --needed --noconfirm yazi # lazygit
pacman -S --needed --noconfirm helix
pacman -S --needed --noconfirm fzf
### 安卓工具
pacman -S --needed --noconfirm android-tools scrcpy
### 仪表盘
pacman -S --needed --noconfirm btop fastfetch
#-----------
## 输入法
pacman -S --needed --noconfirm fcitx5-im fcitx5-chinese-addons
## 浏览器
pacman -S --needed --noconfirm firefox
## 字体管理器及字体
pacman -S --needed --noconfirm font-manager ttf-ubuntu-mono-nerd wqy-microhei
## 使用font-manager手动安装字体
## 字体路径: /const/workflow/homeDir/dotLocal/fonts/LXGWWenKaiMonoScreen.ttf
