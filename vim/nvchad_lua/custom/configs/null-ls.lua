local null_ls = require "null-ls"

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local sources = {
  null_ls.builtins.formatting.prettier,
  null_ls.builtins.diagnostics.eslint,
  null_ls.builtins.formatting.stylua,
  null_ls.builtins.formatting.black,
}

null_ls.setup {
  sources = sources,
  on_attach = function(current_client, bufnr)
    if current_client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format {
            filter = function(client)
              return client.name == "null-ls"
            end,
            bufnr = bufnr,
          }
        end,
      })
    end
  end,
}
