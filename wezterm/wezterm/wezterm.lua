local wezterm = require('wezterm');

return {
  color_scheme = "Catppuccin",
  font = wezterm.font_with_fallback({"FantasqueSansMono Nerd Font", "Noto Color Emoji"}),
  font_size = 15.0,
  window_background_opacity = 0.8,
  hide_tab_bar_if_only_one_tab = true,
}
