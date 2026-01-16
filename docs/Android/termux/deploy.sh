#!/data/data/com.termux/files/usr/bin/bash

# 配置存储权限
termux-setup-storage
# 换源
termux-change-repo

apt update
apt upgrade

apt install git
git config --global user.name 'CZ'
git config --global user.email 'Yinye1986@gmail.com'
git config --global core.editor 'hx'
git config --global init.defaultbranch 'main'


cd /sdcard
git clone git@xxx.git AAA

ln -sf /sdcard/AAA/Desktop ~/Desktop
ln -sf /sdcard/AAA/Documents ~/Documents
ln -sf /sdcard/AAA/Downloads ~/Downloads
ln -sf /sdcard/AAA/Pictures ~/Pictures

ln -sf /sdcard/AAA/dotfile/.config ~/.config
ln -sf /sdcard/AAA/dotfile/.bashrc ~/.bashrc

# 配置字体
cp /sdcard/AAA/dotfile/.local/share/fonts/UbuntuMonoNerdFontMono-Regular.ttf ~/.termux/font.ttf
termux-reload-settings

# 软件安装
apt update
apt upgrade

apt install file
apt install openssh
apt install yazi helix
