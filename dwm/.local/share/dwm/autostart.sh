#!/bin/bash
xrandr --output HDMI-0 --auto --left-of eDP-1-1 &
picom &
feh --bg-scale --no-fehbg $HOME/Pictures/wallpapers/0058.jpg &
xrdb ~/.config/X11/Xresources &
/home/$USER/src/Personal/dwm-bar/dwm_bar.sh &
discord &
brave &
alacritty &
