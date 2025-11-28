#!/data/data/com.termux/files/usr/bin/bash


# 配置存储
termux-setup-storage
# 换源
termux-change-repo

apt update
apt upgrade

apt install git ssh
apt install yazi helix

ln -sf /sdcard ~/sdcard
