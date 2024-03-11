return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "goolord/alpha-nvim",
    opts = function(_, opts) -- override the options using lazy.nvim
      opts.section.header.val = { -- change the header section value
        " ████████╗ █████╗  ██████╗       ███████╗",
        " ╚══██╔══╝██╔══██╗██╔═══██╗      ██╔════╝",
        "    ██║   ███████║██║   ██║█████╗███████╗",
        "    ██║   ██╔══██║██║   ██║╚════╝╚════██║",
        "    ██║   ██║  ██║╚██████╔╝      ███████║",
        "    ╚═╝   ╚═╝  ╚═╝ ╚═════╝       ╚══════╝",
      }
    end,
  },
}
