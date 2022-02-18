vim.g.coc_global_extensions ={
'coc-css',
'coc-pairs',
'coc-git',
'coc-diagnostic',
'coc-explorer',
'coc-gitignore',
'coc-html',
'coc-json',
'coc-lists',
'coc-prettier',
'coc-snippets',
'coc-syntax',
'coc-tslint-plugin',
'coc-tsserver',
'coc-yaml',
'coc-cmake',
'coc-clangd',
'coc-emmet',
'coc-tabnine',
'coc-todolist',
'coc-project'
}

vim.api.nvim_set_keymap('n','<F3>',':CocCommand explorer<cr>',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<leader>f','<Plug>(coc-format)',{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<space>f',':<C-u>CocCommand prettier.formatFile<cr>',{noremap=true,silent=true,nowait=true})
vim.api.nvim_set_keymap('n','<space><space>',':<C-u>CocList files<cr>',{noremap=true,silent=true,nowait=true})
vim.api.nvim_set_keymap('n','<space>t',':<C-u>CocList todolist<cr>',{noremap=true,silent=true,nowait=true})
vim.api.nvim_set_keymap('n','<space>a',':<C-u>CocList diagnostics<cr>',{noremap=true,silent=true,nowait=true})
vim.api.nvim_set_keymap('n','<space>e',':<C-u>CocList extensions<cr>',{noremap=true,silent=true,nowait=true})
vim.api.nvim_set_keymap('n','<space>c',':<C-u>CocList commands<cr>',{noremap=true,silent=true,nowait=true})
vim.api.nvim_set_keymap('n','<space>o',':<C-u>CocList outline<cr>',{noremap=true,silent=true,nowait=true})
vim.api.nvim_set_keymap('n','<space>s',':<C-u>CocList -I symbols<cr>',{noremap=true,silent=true,nowait=true})
vim.api.nvim_set_keymap('n','<space>w',':<C-u>CocList words<cr>',{noremap=true,silent=true,nowait=true})
