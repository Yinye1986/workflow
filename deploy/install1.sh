#!/bin/bash


pacman -Syyu
pacman -S --needed --noconfirm amd-ucode mesa xf86-video-amdgpu vulkan-radeon libva-mesa-driver mesa-vdpau
pacman -S --needed --noconfirm sudo helix git
pacman -S --needed --noconfirm networkmanager network-manager-applet
systemctl enable NetworkManager
pacman -S --needed --noconfirm grub efibootmgr os-prober
pacman -S --needed --noconfirm greetd greetd-tuigreet
systemctl enable greetd


# 用户
#========================
useradd -m shins0u
usermod -aG wheel shins0u
passwd root
passwd shins0u
helix /etc/sudoers

# 配置文件部署
#==================================================
chgrp -R shins0u /const
chown -R shins0u /const
chmod -R 755 /const

# 时间
#=====================================
timedatectl set-timezone Asia/Shanghai
timedatectl set-ntp 1
timedatectl set-local-rtc 1
hwclock --systohc

# 本地化
#===================================================
# uncomment en_US.UTF-8 && zh_CN.UTF-8
helix /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf

# tty键盘布局
#=================
echo "KEYMAP=colemak" >> /etc/vconsole.conf

echo "hcz" >> /etc/hostname
# echo "127.0.0.1    localhost" >> /etc/hosts
# echo "::1          localhost" >> /etc/hosts
echo "127.0.1.1    hcz.localdomain hcz" >> /etc/hosts


# uncomment GRUB_DISABLE_OS_PROBER=false
helix /etc/default/grub
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=Arch
grub-mkconfig -o /boot/grub/grub.cfg
