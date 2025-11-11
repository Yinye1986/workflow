#!/bin/bash

# systemctl stop reflector.service
# iwctl

timedatectl set-timezone Asia/Shanghai
timedatectl set-ntp 1
timedatectl set-local-rtc 1

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


# esp
mkfs.fat -F 32 ${yourdisk}p1
# swap
mkswap ${yourdisk}p2
swapon ${yourdisk}p2
# config
mkfs.ext4 ${yourdisk}p3
# root dir
mkfs.ext4 ${yourdisk}p4
mount ${yourdisk}p4 /mnt
mount --mkdir ${yourdisk}p3 /mnt/const
mount --mkdir ${yourdisk}p1 /mnt/esp

while true; do
	read -p "If Done, Please 'Y': " input
	if [ "$input" = "Y" ]; then
		break
	fi
done

pacstrap -K /mnt base linux linux-firmware
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
