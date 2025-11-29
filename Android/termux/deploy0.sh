#!/data/data/com.termux/files/usr/bin/bash


# 配置存储
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

echo "bash /sdcard/AAA/deploy1.sh 进行后续安装事宜"
