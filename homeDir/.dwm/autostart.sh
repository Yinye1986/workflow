#!/bin/bash

xrandr --output HDMI-2 --above eDP-1 --auto

feh --bg-fill --randomize /usr/share/backgrounds/archlinux/* &

/bin/bash /home/chris/.dwm/dwm-status.sh &

xclip -selection clipboard &

fcitx5 &

setxkbmap us colemak
xmodmap ~/.Xmodmap

exec dwm
