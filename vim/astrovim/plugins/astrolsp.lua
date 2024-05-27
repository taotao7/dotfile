---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    -- Configuration table of features provided by AstroLSP
    features = {
      autoformat = true, -- enable or disable auto formatting on start
      codelens = true, -- enable/disable codelens refresh on start
      cmp = true,
      inlay_hints = false, -- enable/disable inlay hints on start
      semantic_tokens = true, -- enable/disable semantic token highlighting
    },
    ---@type any
    config = {
      eslint = {
        filetypes = {
          "javascript",
          "javascript.jsx",
          "javascriptreact",
          "typescript",
          "typescript.tsx",
          "typescriptreact",
          "vue",
        },
      },
      volar = { filetypes = { "vue" } },
    },

    formatting = {
      async = false,
      format_on_save = { enabled = true },

      filter = function(client)
        local ignored_clients = { "jsonls", "tsserver", "vtsls", "volar" }

        for _, client_name in ipairs(ignored_clients) do
          if client_name == client.name then return false end
        end

        return true
      end,
    },
  },
}
