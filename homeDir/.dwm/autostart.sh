#!/bin/bash

xrandr --output HDMI-2 --above eDP-1 --auto

feh --bg-fill --randomize /usr/share/backgrounds/archlinux/* &

/bin/bash /home/chris/.dwm/dwm-status.sh &

xclip -selection clipboard &
picom &


export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
fcitx5 &

#setxkbmap us -variant colemak
#xmodmap ~/.Xmodmap

exec dwm
