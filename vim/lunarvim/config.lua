-- general
lvim.log.level = "warn"
lvim.format_on_save = true
-- vim.cmd('set background=light')
lvim.colorscheme = "tokyonight"
-- vim.background = "light"
-- vim.g.gruvbox_bold = 1;
-- vim.g.gruvbox_italic = 1;
-- vim.g.gruvbox_contrast_dark = "soft"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_italic_variables = true
vim.opt.cmdheight = 1;
vim.opt.showtabline = 2;
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
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
-- lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.dap.active = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash", "c", "javascript", "json", "lua", "python", "typescript", "tsx",
  "css", "rust", "java", "yaml"
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- plugins
lvim.plugins = {
  { "folke/tokyonight.nvim" },
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
