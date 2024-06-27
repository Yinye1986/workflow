#!/bin/bash

xrandr --output HDMI-2 --above eDP-1 --auto

# feh --bg-fill --randomize /usr/share/backgrounds/archlinux/* &

feh --bg-fill ~/下载/Image_1719328933139.png &

/bin/bash /home/chris/.dwm/dwm-status.sh &

xclip -selection clipboard &

fcitx5 &

setxkbmap us colemak
xmodmap ~/.Xmodmap

exec dwm
