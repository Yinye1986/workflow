#!/bin/bash
# NU

ln -sf /const/workflow/homeDir/.bash_profile /home/chris/.bash_profile
ln -sf /const/workflow/homeDir/.bashrc /home/chris/.bashrc
ln -sf /const/workflow/homeDir/.gitconfig /home/chris/.gitconfig

mkdir /home/chris/.config

# for users

ln -sf /const/workflow/homeDir/dotConfig/fish /home/chris/.config/fish
ln -sf /const/workflow/homeDir/dotConfig/alacritty /home/chris/.config/alacritty
ln -sf /const/workflow/homeDir/dotConfig/yazi /home/chris/.config/yazi
ln -sf /const/workflow/homeDir/dotConfig/nvim /home/chris/.config/nvim
ln -sf /const/workflow/homeDir/dotConfig/fcitx5 /home/chris/.config/fcitx5
ln -sf /const/workflow/homeDir/dotConfig/rofi /home/chris/.config/rofi
ln -sf /const/workflow/homeDir/dotConfig/hypr /home/chris/.config/hypr
ln -sf /const/workflow/homeDir/dotConfig/waybar /home/chris/.config/waybar
ln -sf /const/workflow/homeDir/dotConfig/clash /home/chris/.config/clash
ln -sf /const/workflow/homeDir/dotConfig/mihomo /home/chris/.config/mihomo
ln -sf /const/workflow/homeDir/dotConfig/clangd /home/chris/.config/clangd

mkdir /home/chris/.local

ln -sf /const/dotLocal/fcitx5 /home/chris/.local/share/fcitx5

ssh-keygen -t ed25519 -C "yinye1986@gmail.com"

# for admin

sudo mkdir -p /root/.config

sudo ln -sf /const/workflow/homeDir/dotConfig/yazi /root/.config/yazi
sudo ln -sf /const/workflow/homeDir/dotConfig/nvim_clear /root/.config/nvim

