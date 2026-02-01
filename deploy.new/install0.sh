#!/bin/bash

# 1. 关闭不需要的服务
systemctl stop reflector.service

# 2. 配置网络
iwctl

# 3. 配置系统时间
timedatectl set-timezone Asia/Shanghai
timedatectl set-ntp 1

# 4. 配置pacman, 换源
vim /etc/pacman.conf

# 5. 分区, 格式化, 挂载
lsblk
read -p "Input Your Disk Like'/dev/nvme1n1p':" yourdisk
fdisk ${yourdisk}
while true; do
	read -p "If Done, Please 'Y': " input
	if [ "$input" = "Y" ]; then
		break
	fi
done

# 1  1G /esp
# 2 16G swap
# 3 16G /const
# 4 96G /
# 5 ... /home

# esp
mkfs.fat -F 32 ${yourdisk}1
# swap
mkswap ${yourdisk}2
swapon ${yourdisk}2
# const
mkfs.ext4 ${yourdisk}3
# root
mkfs.ext4 ${yourdisk}4
# home
mkfs.ext4 ${yourdisk}5

mount ${yourdisk}4 /mnt
mount --mkdir ${yourdisk}1 /mnt/esp
mount --mkdir ${yourdisk}3 /mnt/const
mount --mkdir ${yourdisk}5 /mnt/home

while true; do
	read -p "If Done, Please 'Y': " input
	if [ "$input" = "Y" ]; then
		break
	fi
done

pacstrap -K /mnt linux-firmware linux-zen base
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
