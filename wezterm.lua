-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()
config.automatically_reload_config = true
config.color_scheme = "Monokai Pro (Gogh)"
config.font = wezterm.font("UbuntuMono Nerd Font")
config.font_size = 16
config.window_frame = {
	font = wezterm.font("Roboto"),
	font_size = 14,
}

config.line_height = 1

config.window_frame = {
	border_left_width = "0",
	border_right_width = "0",
	border_bottom_height = "0",
	border_top_height = "0",
}

config.term = "xterm-256color"
config.animation_fps = 60
config.max_fps = 60
config.front_end = "WebGpu"
config.webgpu_power_preference = "HighPerformance"

-- scrollbar
config.enable_scroll_bar = false
config.min_scroll_bar_height = "3cell"
config.colors = {
	scrollbar_thumb = "#34354D",
	-- background = "rgba(0, 0, 0, 0.6)",
}
config.window_background_opacity = 0.5

config.macos_window_background_blur = 25

-- tab bar
config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = false
config.use_fancy_tab_bar = true
config.tab_max_width = 25
config.show_tab_index_in_tab_bar = true
config.switch_to_last_active_tab_when_closing_tab = true

-- cursor
config.default_cursor_style = "BlinkingBlock"
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"
config.cursor_blink_rate = 700

-- window
config.adjust_window_size_when_changing_font_size = false
-- config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.initial_cols = 120
config.initial_rows = 24
config.window_padding = {
	left = 8,
	right = 8,
	top = 16,
	bottom = 0,
}
config.window_close_confirmation = "AlwaysPrompt"
config.inactive_pane_hsb = { saturation = 1.0, brightness = 1.0 }

-- and finally, return the configuration to wezterm
return config
