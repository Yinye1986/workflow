#!/bin/bash

rm -rf $HOME/.bash_profile
rm -rf $HOME/.bashrc
rm -rf $HOME/.gitconfig
rm -rf $HOME/.npmrc
rm -rf $HOME/.zshrc

ln -sf /const/workflow/homeDir/.bash_profile $HOME/.bash_profile
ln -sf /const/workflow/homeDir/.bashrc $HOME/.bashrc
ln -sf /const/workflow/homeDir/.gitconfig $HOME/.gitconfig
ln -sf /const/workflow/homeDir/.npmrc $HOME/.npmrc
ln -sf /const/workflow/homeDir/.zshrc $HOME/.zshrc

rm -rf $HOME/.config/alacritty
rm -rf $HOME/.config/environment.d
rm -rf $HOME/.config/fcitx5
rm -rf $HOME/.config/fish
rm -rf $HOME/.config/helix
rm -rf $HOME/.config/hypr
rm -rf $HOME/.config/mako
rm -rf $HOME/.config/mihomo
rm -rf $HOME/.config/nvim_clear
rm -rf $HOME/.config/pip
rm -rf $HOME/.config/sway
rm -rf $HOME/.config/waybar
rm -rf $HOME/.config/yazi

ln -sf /const/workflow/homeDir/dotConfig/alacritty $HOME/.config/alacritty
ln -sf /const/workflow/homeDir/dotConfig/environment.d $HOME/.config/environment.d
ln -sf /const/workflow/homeDir/dotConfig/fcitx5 $HOME/.config/fcitx5
ln -sf /const/workflow/homeDir/dotConfig/fish $HOME/.config/fish
ln -sf /const/workflow/homeDir/dotConfig/helix $HOME/.config/helix
ln -sf /const/workflow/homeDir/dotConfig/hypr $HOME/.config/hypr
ln -sf /const/workflow/homeDir/dotConfig/mako $HOME/.config/mako
ln -sf /const/workflow/homeDir/dotConfig/mihomo $HOME/.config/mihomo
ln -sf /const/workflow/homeDir/dotConfig/nvim_clear $HOME/.config/nvim_clear
ln -sf /const/workflow/homeDir/dotConfig/pip $HOME/.config/pip
ln -sf /const/workflow/homeDir/dotConfig/sway $HOME/.config/sway
ln -sf /const/workflow/homeDir/dotConfig/waybar $HOME/.config/waybar
ln -sf /const/workflow/homeDir/dotConfig/yazi $HOME/.config/yazi

# ssh-keygen -t ed25519 -C "yinye1986@gmail.com"
