#!/bin/sh

userresources=$HOME/.Xresources

if [ -f "$userresources" ]; then

	xrdb -merge "$userresources"

fi

if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

exec i3
