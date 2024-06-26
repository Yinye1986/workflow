#!/bin/bash

echo "Make Sure The dotfile Is In /home/chris/ AND RUN WITH ROOT"
echo "(YES/NOT)"
read answer
if [ "$answer" = "YES" ]; then
	iwctl

    pacman -Sy xorg xorg-xinit picom feh --noconfirm                      # 显示服务
	pacman -Sy alsa-utils --noconfirm                                     # 音频
	pacman -Sy firefox                                                    # 浏览器
	pacman -Sy ttf-hack ttf-hack-nerd wqy-zenhei wqy-microhei --noconfirm # 字体
	pacman -Sy bluez                                                      # 蓝牙
	pacman -Sy alacritty fish xclip yazi clash                            # 必备组件
    pacman -Sy htop neofetch

	# 编译安装dwm
	git clone https://github.com/Yinye1986/dwm.git /home/chris/myApplications/dwm/
	cd /home/chris/myApplications/dwm
	make clean install

	# 编译安装yay
    export GO111MODULE=on
    export GOPROXY=https://goproxy.cn
	git clone https://aur.archlinux.org/yay.git /home/chris/myApplications/yay/
	cd /home/chris/myApplications/yay
	makepkg -si

	echo "Please install fcitx5"

else
	echo "Script Interrupt"
	exit
fi
