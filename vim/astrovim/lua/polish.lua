vim.api.nvim_create_autocmd("VimLeavePre", {
  callback = function() vim.fn.jobstart("killall prettierd eslint_d", { detach = true }) end,
})
