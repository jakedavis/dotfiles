#!/bin/sh

userresources=$HOME/.Xdefaults
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

xrdb -merge $userresources
xmodmap $usermodmap

if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/* ; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

xrandr --output LVDS --off --output HDMI-0 --auto &
xsetroot -cursor_name left_ptr &
urxvtd -q -o -f &
feh --bg-fill ~/custom/wallpapers/IMG_1182.jpg &
xmonad 
