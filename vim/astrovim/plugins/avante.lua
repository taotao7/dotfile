return {
  "yetone/avante.nvim",
  build = ":AvanteBuild",
  init = function()
    local config = require "avante.config"
    config.auto_suggestions_provider = "deepseek"
  end,
  cmd = {
    "AvanteAsk",
    "AvanteBuild",
    "AvanteEdit",
    "AvanteRefresh",
    "AvanteSwitchProvider",
    "AvanteChat",
    "AvanteToggle",
    "AvanteClear",
  },
  dependencies = {
    "stevearc/dressing.nvim",
    {
      -- make sure `Avante` is added as a filetype
      "MeanderingProgrammer/render-markdown.nvim",
      optional = true,
      opts = function(_, opts)
        if not opts.file_types then opts.filetypes = { "markdown" } end
        opts.file_types = require("astrocore").list_insert_unique(opts.file_types, { "Avante" })
      end,
    },
    {
      -- make sure `Avante` is added as a filetype
      "OXY2DEV/markview.nvim",
      optional = true,
      opts = function(_, opts)
        if not opts.filetypes then opts.filetypes = { "markdown", "quarto", "rmd" } end
        opts.filetypes = require("astrocore").list_insert_unique(opts.filetypes, { "Avante" })
      end,
    },
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    {
      "AstroNvim/astrocore",
      opts = function(_, opts)
        local maps = assert(opts.mappings)
        local prefix = "<Leader>a"

        maps.n[prefix] = { desc = "Avante functionalities" }

        maps.n[prefix .. "a"] = { function() require("avante.api").ask() end, desc = "Avante ask" }
        maps.v[prefix .. "a"] = { function() require("avante.api").ask() end, desc = "Avante ask" }

        maps.v[prefix .. "r"] = { function() require("avante.api").refresh() end, desc = "Avante refresh" }

        maps.n[prefix .. "e"] = { function() require("avante.api").edit() end, desc = "Avante edit" }
        maps.v[prefix .. "e"] = { function() require("avante.api").edit() end, desc = "Avante edit" }

        -- the following key bindings do not have an official api implementation
        maps.n.co = { "<Plug>(AvanteConflictOurs)", desc = "Choose ours", expr = true }
        maps.v.co = { "<Plug>(AvanteConflictOurs)", desc = "Choose ours", expr = true }

        maps.n.ct = { "<Plug>(AvanteConflictTheirs)", desc = "Choose theirs", expr = true }
        maps.v.ct = { "<Plug>(AvanteConflictTheirs)", desc = "Choose theirs", expr = true }

        maps.n.ca = { "<Plug>(AvanteConflictAllTheirs)", desc = "Choose all theirs", expr = true }
        maps.v.ca = { "<Plug>(AvanteConflictAllTheirs)", desc = "Choose all theirs", expr = true }

        maps.n.cb = { "<Plug>(AvanteConflictBoth)", desc = "Choose both", expr = true }
        maps.v.cb = { "<Plug>(AvanteConflictBoth)", desc = "Choose both", expr = true }

        maps.n.cc = { "<Plug>(AvanteConflictCursor)", desc = "Choose cursor", expr = true }
        maps.v.cc = { "<Plug>(AvanteConflictCursor)", desc = "Choose cursor", expr = true }

        maps.n["]x"] = { "<Plug>(AvanteConflictPrevConflict)", desc = "Move to previous conflict", expr = true }

        maps.n["[x"] = { "<Plug>(AvanteConflictNextConflict)", desc = "Move to next conflict", expr = true }
      end,
    },
  },
  opts = {
    provider = "deepseek",
    vendors = {
      deepseek = {
        endpoint = "https://api.deepseek.com/chat/completions",
        model = "deepseek-coder",
        api_key_name = "DEEPSEEK_API_KEY",
        parse_curl_args = function(opts, code_opts)
          return {
            url = opts.endpoint,
            headers = {
              ["Accept"] = "application/json",
              ["Content-Type"] = "application/json",
              ["Authorization"] = "Bearer " .. os.getenv(opts.api_key_name),
            },
            body = {
              model = opts.model,
              messages = { -- you can make your own message, but this is very advanced
                { role = "system", content = code_opts.system_prompt },
                { role = "user", content = require("avante.providers.openai").get_user_message(code_opts) },
              },
              temperature = 0,
              max_tokens = 4096,
              stream = true, -- this will be set by default.
            },
          }
        end,
        parse_response_data = function(data_stream, event_state, opts)
          require("avante.providers").openai.parse_response(data_stream, event_state, opts)
        end,
      },
    },
    behaviour = {
      auto_suggestions = true, -- Experimental stage
      auto_set_highlight_group = true,
      auto_set_keymaps = true,
      auto_apply_diff_after_generation = false,
      support_paste_from_clipboard = false,
    },
  },
  specs = {},
}
