-- general
lvim.log.level = "warn"
lvim.format_on_save = true
-- vim.cmd('set background=light')
-- lvim.colorscheme = "github_dimmed"
lvim.colorscheme = "github_dark"
lvim.builtin.lualine.options.theme = "github_dark"
-- vim.background = "light"
-- vim.g.gruvbox_bold = 1;
-- vim.g.gruvbox_italic = 1;
-- vim.g.gruvbox_contrast_dark = "soft"
vim.opt.hidden = false
vim.opt.cmdheight = 1;
vim.opt.wrap = true

-- wsl2
if vim.fn.has "wsl" == 1 then
  vim.g.clipboard = {
    copy = {
      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "win32yank.exe -o --lf",
      ["*"] = "win32yank.exe -o --lf",
    },
  }
end

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = ","
lvim.keys.normal_mode["<F3>"] = ":SymbolsOutline<CR>"
lvim.keys.normal_mode["<leader>t"] = ":TodoLocList<CR>"
-- add your own keymapping

-- copilot
--vim.g.copilot_no_tab_map = true
--vim.g.copilot_assume_mapped = true
--vim.g.copilot_tab_fallback = ""
--local cmp = require "cmp"
--lvim.builtin.cmp.mapping["<C-e>"] = function(fallback)
--  cmp.mapping.abort()
--  local copilot_keys = vim.fn["copilot#Accept"]("")
--  if copilot_keys ~= "" then
--    vim.api.nvim_feedkeys(copilot_keys, "i", true)
--  else
--    fallback()
--  end
--end

-- builtin
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.alpha.dashboard.section.header.val = {
  " ████████╗ █████╗  ██████╗       ███████╗",
  " ╚══██╔══╝██╔══██╗██╔═══██╗      ██╔════╝",
  "    ██║   ███████║██║   ██║█████╗███████╗",
  "    ██║   ██╔══██║██║   ██║╚════╝╚════██║",
  "    ██║   ██║  ██║╚██████╔╝      ███████║",
  "    ╚═╝   ╚═╝  ╚═╝ ╚═════╝       ╚══════╝",
}
lvim.builtin.terminal.active = false
lvim.builtin.nvimtree.setup.view.side = "left"
-- lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.dap.active = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash", "c", "cpp", "javascript", "json", "lua", "python", "typescript", "tsx",
  "css", "rust", "java", "yaml"
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- gitsigns
lvim.builtin.gitsigns.opts.current_line_blame = true

-- indent blackline
lvim.builtin.indentlines.options.space_char_blankline = " "
lvim.builtin.indentlines.options.show_current_context = true
lvim.builtin.indentlines.options.show_current_context_start = true


-- plugins
lvim.plugins = {
  { 'sainnhe/everforest' },
  { 'sainnhe/sonokai' },
  { 'joshdick/onedark.vim' },
  { 'easymotion/vim-easymotion' },
  {
    'projekt0n/github-nvim-theme'
  },
  {
    "simrat39/symbols-outline.nvim",
    config = function()
      require('symbols-outline').setup {
        width = 15
      }
    end
  },
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup {
        signs = true,      -- show icons in the signs column
        sign_priority = 8, -- sign priority
        keywords = {
          FIX = {
            icon = " ",                              -- icon used for the sign, and in search results
            color = "error",                            -- can be a hex color, or a named color (see below)
            alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
          },
          TODO = { icon = " ", color = "info" },
          HACK = { icon = " ", color = "warning" },
          WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
          PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
          NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
          TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
        },
        gui_style = {
          fg = "NONE",                    -- The gui style to use for the fg highlight group.
          bg = "BOLD",                    -- The gui style to use for the bg highlight group.
        },
        merge_keywords = true,            -- when true, custom keywords will be merged with the defaults
        highlight = {
          multiline = true,               -- enable multine todo comments
          multiline_pattern = "^.",       -- lua pattern to match the next multiline from the start of the matched keyword
          multiline_context = 10,         -- extra lines that will be re-evaluated when changing a line
          before = "",                    -- "fg" or "bg" or empty
          keyword = "wide",               -- "fg", "bg", "wide", "wide_bg", "wide_fg" or empty. (wide and wide_bg is the same as bg, but will also highlight surrounding characters, wide_fg acts accordingly but with fg)
          after = "fg",                   -- "fg" or "bg" or empty
          pattern = [[.*<(KEYWORDS)\s*]], -- pattern or table of patterns, used for highlightng (vim regex)
          comments_only = true,           -- uses treesitter to match keywords in comments only
          max_line_len = 400,             -- ignore lines longer than this
          exclude = {},                   -- list of file types to exclude highlighting
        },
        colors = {
          error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
          warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
          info = { "DiagnosticInfo", "#2563EB" },
          hint = { "DiagnosticHint", "#10B981" },
          default = { "Identifier", "#7C3AED" },
          test = { "Identifier", "#FF00FF" }
        },
        search = {
          command = "rg",
          args = {
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
          },
          pattern = [[\b(KEYWORDS)]], -- ripgrep regex
        },
      }
    end,
  }
}

-- lsp

-- formatters
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = 'prettier',
    filetypes = {
      "typescript", "javascript", "typescriptreact", "javascriptreact"
    }
  }
}

-- linter
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    command = 'eslint',
    filetypes = {
      "typescript", "javascript", "typescriptreact", "javascriptreact"
    }
  }
}
