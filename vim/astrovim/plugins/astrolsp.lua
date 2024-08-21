---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    -- Configuration table of features provided by AstroLSP
    features = {
      codelens = true, -- enable/disable codelens refresh on start
      inlay_hints = false, -- enable/disable inlay hints on start
      semantic_tokens = true, -- enable/disable semantic token highlighting
    },
    -- customize lsp formatting options
    formatting = {
      async = false,
      format_on_save = { enabled = true },

      filter = function(client)
        local ignored_clients = { "jsonls", "volar" }

        for _, client_name in ipairs(ignored_clients) do
          if client_name == client.name then return false end
        end

        return true
      end,
    },
  },
}
