-- local autocmd = vim.api.nvim_create_autocmd

-- normal settings
vim.g.mapleader = ","
vim.opt.spelllang = "en_us"
vim.opt.spell = true

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
