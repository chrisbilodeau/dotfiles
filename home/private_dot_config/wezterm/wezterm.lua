local wezterm = require 'wezterm'

local config = {}
if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.default_prog = { '/opt/homebrew/bin/fish', '-l' }
config.color_scheme = 'Catppuccin Latte'
config.font = wezterm.font('MonoLisa script')
config.font_size = 16

return config

