-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.enable_scroll_bar = false

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'
config.font = wezterm.font 'JetBrains Mono'
config.font_size = 14.0
config.window_background_opacity = 0.7


-- and finally, return the configuration to wezterm
return config