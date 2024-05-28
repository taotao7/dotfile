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
  { "max397574/better-escape.nvim", enabled = true },
  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom autopairs configuration such as custom rules
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules(
        {
          Rule("$", "$", { "tex", "latex" })
            -- don't add a pair if the next character is %
            :with_pair(cond.not_after_regex "%%")
            -- don't add a pair if  the previous character is xxx
            :with_pair(
              cond.not_before_regex("xxx", 3)
            )
            -- don't move right when repeat character
            :with_move(cond.none())
            -- don't delete if the next character is xx
            :with_del(cond.not_after_regex "xx")
            -- disable adding a newline when you press <cr>
            :with_cr(cond.none()),
        },
        -- disable for .vim files, but it work for another filetypes
        Rule("a", "a", "-vim")
      )
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
