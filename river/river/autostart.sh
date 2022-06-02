#!/bin/bash

# DBUS
VARIABLES="DISPLAY WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=river XDG_SESSION_TYPE"
riverctl spawn "dbus-update-activation-environment ${VARIABLES:- --all}"

# Audio
riverctl spawn "pipewire"
riverctl spawn "pipewire-pulse"
riverctl spawn "mpd --no-daemon"

# Notifications
riverctl spawn "mako"

# Background
back_img=$[ $RANDOM % 5 + 1 ]
riverctl spawn "swaybg -i ~/.config/river/${back_img}.png"

# Bar
riverctl spawn "waybar"

# Disk Mounting
riverctl spawn "udiskie -ant --appindicator"

