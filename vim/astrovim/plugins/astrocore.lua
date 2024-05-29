---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    features = {
      autopairs = true,
      cmp = true,
      diagnostics_mode = 3,
      highlighturl = true,
      notifications = true,
    },
    diagnostics = {
      virtual_text = true,
      underline = true,
      signs = false,
    },
    options = {
      opt = {
        relativenumber = true,
        number = true,
        spell = false,
        signcolumn = "auto",
        wrap = true,
        cursorline = true,
      },
    },
  },
}
