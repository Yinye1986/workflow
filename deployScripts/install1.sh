#!/bin/bash
# SU

pacman -Syy

pacman -S amd-ucode mesa mesa-utils xf86-video-amdgpu vulkan-radeon libva-mesa-driver mesa-vdpau sudo fish neovim --noconfirm

useradd -m chris
usermod -aG wheel chris
passwd root
passwd chris
echo "Uncomment wheel"
nvim /etc/sudoers

while true; do
	read -p "If Done, Please 'Y': " input
	if [ "$input" = "Y" ]; then
		break
	fi
done

ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
hwclock --systohc

echo "Please Uncomment and other needed UTF-8 locales"
echo "Uncomment en_US.UTF-8 AND zh_CN.UTF-8"

nvim /etc/locale.gen

while true; do
	read -p "If Done, Please 'OK': " input
	if [ "$input" = "OK" ]; then
		break
	fi
done

locale-gen

echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "hcz" >> /etc/hostname
echo "127.0.0.1    localhost" >> /etc/hosts
echo "::1          localhost" >> /etc/hosts
echo "127.0.1.1    hcz.localdomain hcz" >> /etc/hosts

pacman -S grub efibootmgr os-prober --noconfirm
echo "Please Uncomment The Last Line"
nvim /etc/default/grub
while true; do
	read -p "If Done, Please 'OK': " input
	if [ "$input" = "OK" ]; then
		break
	fi
done
grub-install --target=x86_64-efi --efi-directory=/esp --bootloader-id=GRUB
os-prober
grub-mkconfig -o /boot/grub/grub.cfg

pacman -S base-devel unzip zip p7zip unarchiver curl wget aria2 openssh git usb_modeswitch usbutils # basic module
pacman -S iwd dhcpcd clash bluez bluez-utils blueman # 网络蓝牙
pacman -S pipewire pipewire-alsa pipewire-pulse pipewire-jack pavucontrol wireplumber # 音频全家桶

pacman -S hyprland hyprpaper xdg-desktop-portal-hyprland xorg-xwayland qt6-wayland qt5-wayland # wm wayland兼容层
pacman -S wl-clipboard cliphist grim slurp # 剪切板支持,剪切板,截图,选取
pacman -S fcitx5-im fcitx5-rime fcitx5-nord --noconfirm # 输入法全家桶

pacman -S alacritty waybar rofi-wayland
pacman -S yazi lazygit fzf thefuck # 必备组件
pacman -S htop fastfetch # 仪表盘
pacman -S cowsay # 趣味工具

pacman -S arm-none-eabi-gcc arm-none-eabi-newlib stlink

pacman -S ttf-hack ttf-hack-nerd wqy-zenhei wqy-microhei font-manager # 字体

systemctl enable iwd
systemctl enable dhcpcd
systemctl enable bluetooth
systemctl enable sshd

echo "QT_IM_MODULE=fcitx" >> /etc/environment
echo "GTK_IM_MODULE=fcitx" >> /etc/environment
echo "XMODIFIERS=@im=fcitx" >> /etc/environment
echo "GLFW_IM_MODULE=fcitx" >> /etc/environment
echo "SDL_IM_MODULE=fcitx" >> /etc/environment
echo "INPUT_METHOD=fcitx" >> /etc/environment

