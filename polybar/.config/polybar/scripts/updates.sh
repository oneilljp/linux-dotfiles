#!/bin/sh

if ! updates_arch=$(checkupdates 2> /dev/null | wc -l); then
	updates_arch=0
fi

if ! updates_aur=$(yay -Qum 2> /dev/null | wc -l); then
	updates_aur=0
fi

updates=$(("$updates_arch" + "$updates_aur"))

if [ "$updates" -gt 0 ]; then
	notify-send "Arch Updates:" "Pacman: $updates_arch \nAUR: $updates_aur"
fi
