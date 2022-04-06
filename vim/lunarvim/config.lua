-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "tokyonight"
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_italic_variables = true
vim.opt.cmdheight = 1;
vim.opt.showtabline = 2;

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = ","
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<F3>"] = ":SymbolsOutline<cr>"

-- copilot 
vim.g.copilot_assume_mapped = true

-- builtin
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.dap.active = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
    "bash", "c", "javascript", "json", "lua", "python", "typescript", "tsx",
    "css", "rust", "java", "yaml"
}

lvim.builtin.treesitter.ignore_install = {"haskell"}
lvim.builtin.treesitter.highlight.enabled = true

-- plugins
lvim.plugins = {
    {"folke/tokyonight.nvim"},
    {"simrat39/symbols-outline.nvim", cmd = "SymbolsOutline"},
    {"github/copilot.vim"}
}

-- lsp

-- formatters
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        command = 'prettier',
        args = {"--print-width", "100"},
        filetypes = {
            "typescript", "javascript", "typescriptreact", "javascriptreact"
        }
    }, {command = 'lua-format', filetypes = {"lua"}}
}

-- linter
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
    {
        command = 'eslint',
        args = {"--fix-dry-run"},
        filetypes = {
            "typescript", "javascript", "typescriptreact", "javascriptreact"
        }
    }
}
