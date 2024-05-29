---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    features = {
      autopairs = true,
      cmp = true,
      diagnostics_mode = 2,
      highlighturl = true,
      notifications = true,
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
