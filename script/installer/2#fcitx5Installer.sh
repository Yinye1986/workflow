#!/bin/bash

function Installer {
	sudo pacman -Sy --needed fcitx5 fcitx5-chinese-addons fcitx5-qt fcitx5-gtk --noconfirm
	sudo pacman -Sy --needed fcitx5-pinyin-zhwiki                # 词库
	yay -Sy --needed fcitx5-pinyin-custom-pinyin-dictionary fcitx5-input-support# 词库
	echo "Installation has begun"
}

echo "Ensure that yay is installed"
echo "(YES/NOT)"
read answer
if [ "$answer" = "YES" ]; then
	Installer
else
	echo "Script has been terminated"
	exit
fi
