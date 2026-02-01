#!/bin/bash

# 安装
#==============================================================================
pacman -Syyu
pacman -S --needed --noconfirm amd-ucode
# pacman -S --needed --noconfirm mesa xf86-video-amdgpu vulkan-radeon libva-mesa-driver mesa-vdpau
pacman -S --needed --noconfirm brightnessctl
pacman -S --needed --noconfirm networkmanager
pacman -S --needed --noconfirm bluez
pacman -S --needed --noconfirm sudo
pacman -S --needed --noconfirm grub efibootmgr os-prober
pacman -S --needed --noconfirm greetd greetd-tuigreet
systemctl enable NetworkManager
systemctl enable bluetooth
systemctl enable sshd
systemctl enable greetd
#------------------------------------------------------------------------------
pacman -S --needed --noconfirm openssh
pacman -S --needed --noconfirm base-devel
pacman -S --needed --noconfirm git wget curl aria2
pacman -S --needed --noconfirm zip unzip p7zip
pacman -S --needed --noconfirm helix
pacman -S --needed --noconfirm man-db tealdeer
#------------------------------------------------------------------------------
pacman -S --needed --noconfirm ttf-ubuntu-mono-nerd

# 网络配置
#==============================================================================
echo "hcz" >> /etc/hostname
# echo "127.0.0.1    localhost" >> /etc/hosts
# echo "::1          localhost" >> /etc/hosts
echo "127.0.1.1    hcz.localdomain hcz" >> /etc/hosts

# 时间
#=====================================
timedatectl set-timezone Asia/Shanghai
timedatectl set-ntp 1
timedatectl set-local-rtc 1
hwclock --systohc

# 本地化
#==========================================
helix /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf

# 用户
#========================
helix /etc/sudoers
useradd -m shins0u
usermod -aG wheel shins0u
passwd root
passwd shins0u

# tty配置
#==========================================
# echo "KEYMAP=us" >> /etc/vconsole.conf
echo "KEYMAP=colemak" >> /etc/vconsole.conf

# Grub配置
#==============================================================================
# uncomment GRUB_DISABLE_OS_PROBER=false
helix /etc/default/grub
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=Arch
grub-mkconfig -o /boot/grub/grub.cfg

# 其他配置
#==============================================================================
chgrp -R shins0u /const
chown -R shins0u /const
chmod -R 755 /const
