#!/bin/bash

rm -rf $HOME/.config/niri
rm -rf $HOME/.config/waybar
rm -rf $HOME/.config/mako
rm -rf $HOME/.config/fcitx5
rm -rf $HOME/.config/quickshell
rm -rf $HOME/.config/alacritty

mkdir -p $HOME/.config
ln -sf /const/workflow/homeDir/dotConfig/niri $HOME/.config/niri
ln -sf /const/workflow/homeDir/dotConfig/waybar $HOME/.config/waybar
ln -sf /const/workflow/homeDir/dotConfig/waybar $HOME/.config/quickshell
ln -sf /const/workflow/homeDir/dotConfig/mako $HOME/.config/mako
ln -sf /const/workflow/homeDir/dotConfig/fcitx5 $HOME/.config/fcitx5
ln -sf /const/workflow/homeDir/dotConfig/alacritty $HOME/.config/alacritty
