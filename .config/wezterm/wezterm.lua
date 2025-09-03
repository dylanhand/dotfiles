local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.initial_cols = 120
config.initial_rows = 28

config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.skip_close_confirmation_for_processes_named = {} -- prompt to close windows

config.font = wezterm.font("MesloLGLDZ Nerd Font")
config.font_size = 15
config.color_scheme = "Catppuccin Mocha"

return config
