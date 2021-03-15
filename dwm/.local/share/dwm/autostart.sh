#!/bin/bash
xrandr --output HDMI-0 --auto --left-of eDP-1-1 &
picom &
nitrogen --restore &
xrdb ~/.config/X11/Xresources &
dwmblocks &
