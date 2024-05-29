---@type LazySpec
return {
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        " ████████╗ █████╗  ██████╗       ███████╗",
        " ╚══██╔══╝██╔══██╗██╔═══██╗      ██╔════╝",
        "    ██║   ███████║██║   ██║█████╗███████╗",
        "    ██║   ██╔══██║██║   ██║╚════╝╚════██║",
        "    ██║   ██║  ██║╚██████╔╝      ███████║",
        "    ╚═╝   ╚═╝  ╚═╝ ╚═════╝       ╚══════╝",
      }
      return opts
    end,
  },
  -- {
  --   "lukas-reineke/indent-blankline.nvim",
  --   enabled = false,
  -- },
  -- {
  --   "2nthony/vitesse.nvim",
  --   dependencies = {
  --     "tjdevries/colorbuddy.nvim",
  --   },
  --   opts = function(_, opts)
  --     opts.comment_italics = true
  --     opts.transparent_background = false
  --     opts.transparent_float_background = false
  --     opts.reverse_visual = false
  --     opts.dim_nc = false
  --     opts.cmp_cmdline_disable_search_highlight_group = true
  --     opts.telescope_border_follow_float_background = true
  --     opts.lspsaga_border_follow_float_background = true
  --     opts.diagnostic_virtual_text_background = true
  --     return opts
  --   end,
  -- },
}
