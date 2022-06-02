#!/bin/bash

# Terminate already running bar instances
pkill polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
polybar example -r &

extern_connected=$(xrandr --query | grep 'HDMI-0')
if [[ extern_connected = *connected* ]]; then
	polybar monitor -r &
fi

echo "Polybar launched..."
