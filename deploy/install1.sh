#!/bin/bash

pacman -Syyu
pacman -S amd-ucode mesa xf86-video-amdgpu
# 可选:mesa-utils vulkan-radeon libva-mesa-driver mesa-vdpau
pacman -S sudo helix iwd dhcpcd
pacman -S grub efibootmgr os-prober --noconfirm


# 用户
#========================
useradd -m shins0u
usermod -aG wheel shins0u
passwd root
passwd shins0u
echo "Uncomment wheel"
helix /etc/sudoers
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
grub-install --target=x86_64-efi --efi-directory=/esp --bootloader-id=GRUB
os-prober
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable iwd
systemctl enable dhcpcd
