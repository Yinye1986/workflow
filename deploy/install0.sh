#!/bin/bash

systemctl stop reflector.service
# iwctl

timedatectl set-timezone Asia/Shanghai
timedatectl set-ntp 1

vim /etc/pacman.conf

lsblk
read -p "Input Your Disk Like'/dev/nvme1n1':" yourdisk
fdisk ${yourdisk}
while true; do
	read -p "If Done, Please 'Y': " input
	if [ "$input" = "Y" ]; then
		break
	fi
done

# 1 300M esp
# 2 16G swap
# 3 16G const
# 4 64G /
# 5 ... /home

# esp
mkfs.fat -F 32 ${yourdisk}p1
# swap
mkswap ${yourdisk}p2
swapon ${yourdisk}p2
# config
mkfs.ext4 ${yourdisk}p3
# root dir
mkfs.ext4 ${yourdisk}p4
mkfs.ext4 ${yourdisk}p5

mount ${yourdisk}p4 /mnt
mount --mkdir ${yourdisk}p1 /mnt/esp
mount --mkdir ${yourdisk}p3 /mnt/const
mount --mkdir ${yourdisk}p5 /mnt/home

while true; do
	read -p "If Done, Please 'Y': " input
	if [ "$input" = "Y" ]; then
		break
	fi
done

pacstrap -K /mnt base linux linux-firmware
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
