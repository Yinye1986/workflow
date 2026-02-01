#!/bin/bash

rm -rf $HOME/.bash_profile
rm -rf $HOME/.bashrc
rm -rf $HOME/.gitconfig
ln -sf /const/workflow/homeDir/.bash_profile $HOME/.bash_profile
ln -sf /const/workflow/homeDir/.bashrc $HOME/.bashrc
ln -sf /const/workflow/homeDir/.gitconfig $HOME/.gitconfig

rm -rf $HOME/.config/tmux
rm -rf $HOME/.config/fish
rm -rf $HOME/.config/helix
rm -rf $HOME/.config/yazi
rm -rf $HOME/.config/nvim
rm -rf $HOME/.config/pip
ln -sf /const/workflow/homeDir/dotConfig/tmux $HOME/.config/tmux
ln -sf /const/workflow/homeDir/dotConfig/fish $HOME/.config/fish
ln -sf /const/workflow/homeDir/dotConfig/helix $HOME/.config/helix
ln -sf /const/workflow/homeDir/dotConfig/yazi $HOME/.config/yazi
ln -sf /const/workflow/homeDir/dotConfig/nvim $HOME/.config/nvim
ln -sf /const/workflow/homeDir/dotConfig/pip $HOME/.config/pip

# ssh-keygen -t ed25519 -C "yinye1986@gmail.com"
