-- The only required line is this one.
local wezterm = require 'wezterm'
local mux = wezterm.mux
local act = wezterm.action
-- Some empty tables for later use
local config = {}
local keys = {}
local mouse_bindings = {}
local launch_menu = {}

config.color_scheme = 'Aura (Gogh)'
config.colors = {
    foreground = "white"
}

-- config.font = wezterm.font("JetBrainsMono Nerd Font", {weight="Regular", stretch="Normal", style="Normal"})
config.font = wezterm.font("DejaVu Sans Mono", {weight="Regular", stretch="Normal", style="Normal"})
-- config.font = wezterm.font("Anime Ace v3", {weight="Light", stretch="Normal", style="Normal"})  
-- config.font = wezterm.font("Anime Ace 2.0 BB", {weight="Regular", stretch="Normal", style="Normal"})
config.font_size = 10
config.line_height = 0.9
--config.hide_tab_bar_if_only_one_tab = true

config.window_frame = {
    font = wezterm.font("Anime Ace v3", {weight="Light", stretch="Normal", style="Normal"}) 
}

-- config.window_background_image = '/home/oniichan/Images/billy.jpg'
-- config.window_background_image_hsb = {
--    brightness = 0.3,
--    hue = 1.0,
--}
config.window_background_opacity = 0.8

local haswork,work = pcall(require,"work")

return config
