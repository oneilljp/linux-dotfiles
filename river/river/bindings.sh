#!/bin/bash

FILEBROWSER="kitty"
TERMCMD="kitty"
# TERMCMD="wezterm start"

# Terminal
riverctl map normal Mod4+Shift Return spawn "$TERMCMD"

# Launcher
riverctl map normal Mod4 p spawn "bemenu-run -i --tb '#1E1E2E' --fb '#1E1E2E' --hb '#302D41' --sb '#302D41' --nb '#1E1E2E' -H 30 --hf '#F5E0DC' --tf '#F5E0DC' --fn 'FantasqueSans Mono Nerd Font'"

# Music
riverctl map normal Mod4 m spawn "$TERMCMD ncmpcpp"

# File Browser
riverctl map normal Mod4 e spawn "$FILEBROWSER ranger"

# System Status
riverctl map normal Mod4 b spawn "$TERMCMD btop"

# Internet
riverctl map normal Mod4 w spawn "firefox-wayland"
riverctl map normal Mod4+Shift w spawn "firefox-wayland --private-window"
