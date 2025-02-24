local inlayHints = {
  parameterNames = { enabled = "literals" },
  parameterTypes = { enabled = true },
  variableTypes = { enabled = false },
  propertyDeclarationTypes = { enabled = false },
  functionLikeReturnTypes = { enabled = false },
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
      inlay_hints = true,
      semantic_tokens = true,
      signature_help = true,
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
        before_init = function(_, config)
          local astrocore_ok, astrocore = pcall(require, "astrocore")
          local registry_ok, registry = pcall(require, "mason-registry")
          if not astrocore_ok or not registry_ok then return end

          local vuels = registry.get_package "vue-language-server"

          if vuels:is_installed() then
            local volar_install_path = vuels:get_install_path() .. "/node_modules/@vue/language-server"

            local vue_plugin_config = {
              name = "@vue/typescript-plugin",
              location = volar_install_path,
              languages = { "vue" },
              configNamespace = "typescript",
              enableForWorkspaceTypeScriptVersions = true,
            }

            astrocore.list_insert_unique(config.settings.vtsls.tsserver.globalPlugins, { vue_plugin_config })
          end
        end,
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
