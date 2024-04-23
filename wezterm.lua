-- Pull in the wezterm API
local wezterm = require("wezterm")
local gpus = wezterm.gui.enumerate_gpus()

local config = {
  font = wezterm.font("CartographCF Nerd Font"),
  color_scheme = "Kanagawa (Gogh)",
  -- color_scheme = "carbonfox",
  font_size = 14,
  check_for_updates = false,
  use_ime = true,
  ime_preedit_rendering = "Builtin",
  use_dead_keys = false,
  warn_about_missing_glyphs = false,
  -- enable_kitty_graphics = false,
  animation_fps = 1,
  cursor_blink_ease_in = "Constant",
  cursor_blink_ease_out = "Constant",
  cursor_blink_rate = 0,
  -- https://github.com/wez/wezterm/issues/4972
  -- enable_wayland = enable_wayland(),
  enable_wayland = false,
  -- enable_wayland = false,
  hide_tab_bar_if_only_one_tab = true,
  adjust_window_size_when_changing_font_size = false,
  selection_word_boundary = " \t\n{}[]()\"'`,;:│=&!%",
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  },
  use_fancy_tab_bar = false,
  exit_behavior = "CloseOnCleanExit",
  tab_bar_at_bottom = false,
  window_close_confirmation = "AlwaysPrompt",
  -- window_background_opacity = 0.8,
  disable_default_key_bindings = true,
  visual_bell = {
    fade_in_function = "EaseIn",
    fade_in_duration_ms = 150,
    fade_out_function = "EaseOut",
    fade_out_duration_ms = 150,
  },
  -- separate <Tab> <C-i>
  enable_csi_u_key_encoding = true,
  leader = { key = "Space", mods = "CTRL|SHIFT" },
  webgpu_preferred_adapter = gpus[1],
  front_end = "OpenGL",
}

return config
