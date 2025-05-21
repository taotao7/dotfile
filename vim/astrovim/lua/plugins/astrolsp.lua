local inlayHints = {
  parameterNames = { enabled = "literals" },
  parameterTypes = { enabled = true },
  variableTypes = { enabled = false },
  propertyDeclarationTypes = { enabled = false },
  functionLikeReturnTypes = { enabled = true },
  enumMemberValues = { enabled = false },
}
---@type LazySpec
return {
  "AstroNvim/astrolsp",
  tag = "stable",
  pin = true,

  ---@type AstroLSPOpts
  opts = {
    features = {
      codelens = true,
      inlay_hints = false,
      semantic_tokens = true,
      signature_help = false,
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
      volar = {
        init_options = {
          vue = {
            hybridMode = false,
          },
        },
        settings = {
          typescript = {
            updateImportsOnFileMove = { enabled = "always" },
            inlayHints = inlayHints,
          },
          javascript = {
            updateImportsOnFileMove = { enabled = "always" },
            inlayHints = inlayHints,
          },
        },
      },
      vtsls = {
        settings = {
          vtsls = {
            tsserver = {
              globalPlugins = {},
            },
          },
          typescript = {
            updateImportsOnFileMove = { enabled = "always" },
            inlayHints = inlayHints,
          },
          javascript = {
            updateImportsOnFileMove = { enabled = "always" },
            inlayHints = inlayHints,
          },
        },
      },
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
