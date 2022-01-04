-- 一些通用配置
vim.o.number = true
vim.o.history = 500
vim.o.mouse = 'a'
vim.o.cursorline = true
vim.o.conceallevel = 0
vim.o.langmenu='en'
vim.g.mapleader = ','
vim.o.smartcase = true
vim.o.ignorecase = true
vim.o.magic = true
vim.o.showmatch = true
vim.o.cmdheight = 1
vim.o.mat=2
vim.o.eb=true
vim.o.vb= true
vim.o.backup = false
vim.g.nobackup = true
vim.o.writebackup = false
vim.o.swapfile = false
vim.g.completeopt = "menu,menuone,noselect,noinsert"
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.tabstop=2
vim.o.si = true
vim.o.background = "dark"
vim.o.termguicolors = true
vim.opt.termguicolors = true
vim.o.autoread = true
vim.o.wildmenu = true
vim.o.so = 7
vim.g.dashboard_default_executive = 'telescope'

vim.o.list = true
vim.o.listchars = "space:·"


-- 键位
vim.api.nvim_set_keymap('n','<leader>w',':w!<cr>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<leader><cr>',':noh<cr>',{noremap=true,silent=true})

vim.api.nvim_set_keymap('n','<C-j>','<C-W>j',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<C-k>','<C-W>k',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<C-h>','<C-W>h',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<C-l>','<C-W>l',{noremap=true,silent=true})

vim.api.nvim_set_keymap('n','<leader>ba',':bufdo bd<cr>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<leader>l',':bnext <cr>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<leader>h',':bprevious <cr>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<leader>tn',':tabnew<cr>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<leader>to',':tabonly<cr>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<leader>tc',':tabclose<cr>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<leader>t<leader>',':tabnext<cr>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<leader>pp',':setlocal paste!<cr>',{noremap=true,silent=true})

vim.api.nvim_set_keymap('n','<F2>',':Vista!!<cr>',{noremap=true,silent=true})
