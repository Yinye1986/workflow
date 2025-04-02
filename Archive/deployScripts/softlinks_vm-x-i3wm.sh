#!/bin/bash
# NU

ln -sf /const/workflow/homeDir/.bash_profile /home/chris/.bash_profile
ln -sf /const/workflow/homeDir/.bashrc /home/chris/.bashrc
ln -sf /const/workflow/homeDir/.gitconfig /home/chris/.gitconfig
ln -sf /const/workflow/homeDir/.Xmodmap /home/chris/.Xmodmap
ln -sf /const/workflow/homeDir/.Xresources /home/chris/.Xresources
ln -sf /const/workflow/homeDir/.xinitrc /home/chris/.xinitrc

ln -sf /const/workflow/homeDir/.sunpinyin /home/chris/.sunpinyin

mkdir /home/chris/.config

# for users

ln -sf /const/workflow/homeDir/dotConfig/fish /home/chris/.config/fish
ln -sf /const/workflow/homeDir/dotConfig/alacritty /home/chris/.config/alacritty
ln -sf /const/workflow/homeDir/dotConfig/kitty /home/chris/.config/kitty
ln -sf /const/workflow/homeDir/dotConfig/yazi /home/chris/.config/yazi
ln -sf /const/workflow/homeDir/dotConfig/nvim /home/chris/.config/nvim
ln -sf /const/workflow/homeDir/dotConfig/fcitx5 /home/chris/.config/fcitx5
ln -sf /const/workflow/homeDir/dotConfig/rofi /home/chris/.config/rofi
ln -sf /const/workflow/homeDir/dotConfig/i3 /home/chris/.config/i3
ln -sf /const/workflow/homeDir/dotConfig/clash /home/chris/.config/clash
ln -sf /const/workflow/homeDir/dotConfig/clangd /home/chris/.config/clangd

ln -sf /const/workflow/homeDir/dotlocal/fcitx5 /home/chris/.local/share/fcitx5

# for admin

sudo mkdir /root/.config

sudo ln -sf /const/workflow/homeDir/dotConfig/yazi /root/.config/yazi
sudo ln -sf /const/workflow/homedir/dotConfig/nvim_clear /root/.config/nvim

