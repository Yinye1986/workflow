#!/bin/bash

sudo apt update
sudo apt upgrade

# ssh组件
sudo apt install openssh-server tmux

# 配置 nfs
sudo apt install nfs-kernel-server -y
sudo echo "/home/shins0u/AAA  *(rw,sync,no_subtree_check,no_root_squash)" >> /etc/exports
# 使配置生效
sudo exportfs -ra
sudo systemctl restart nfs-kernel-server

# 开发工具
sudo apt install git

git config --global user.name 'CZ'
git config --global user.email 'Yinye1986@gmail.com'
git config --global core.editor 'vim'
git config --global init.defaultbranch 'main'

sudo apt install build-essential
