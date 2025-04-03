local prefix = "<Leader>a"
return {
	"yetone/avante.nvim",
	build = vim.fn.has("win32") == 1 and "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
		or "BUILD_FROM_SOURCE=true make",
	event = "User AstroFile", -- load on file open because Avante manages it's own bindings
	-- init = function()
	--   local config = require "avante.config"
	--   config.auto_suggestions_provider = "deepseek"
	-- end,
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
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		{
			"AstroNvim/astrocore",
			opts = function(_, opts)
				opts.mappings.n[prefix] = { desc = " Avante" }
			end,
		},
	},
	opts = {
		mappings = {
			ask = prefix .. "<CR>",
			edit = prefix .. "e",
			refresh = prefix .. "r",
			focus = prefix .. "f",
			toggle = {
				default = prefix .. "t",
				debug = prefix .. "d",
				hint = prefix .. "h",
				suggestion = prefix .. "s",
				repomap = prefix .. "R",
			},
			diff = {
				next = "]c",
				prev = "[c",
			},
			files = {
				add_current = prefix .. ".",
			},
		},
		provider = "deepseek",
		-- auto_suggestions_provider = "openrouter",
		vendors = {
			deepseek = {
				__inherited_from = "openai",
				api_key_name = "DEEPSEEK_API_KEY",
				endpoint = "https://api.deepseek.com",
				model = "deepseek-chat",
			},
			openrouter = {
				__inherited_from = "openai",
				endpoint = "https://openrouter.ai/api/v1",
				api_key_name = "OPENROUTER_API_KEY",
				model = "anthropic/claude-3.7-sonnet",
			},
		},
		claude = {
			endpoint = "https://api.302.ai",
			model = "claude-3-5-sonnet-20241022",
			temperature = 0,
			max_tokens = 8192,
		},
		behaviour = {
			auto_suggestions = false,
			auto_set_highlight_group = true,
			auto_set_keymaps = true,
			auto_apply_diff_after_generation = false,
			support_paste_from_clipboard = false,
			minimize_diff = true,
			enable_token_counting = true,
			enable_cursor_planning_mode = false,
			enable_claude_text_editor_tool_mode = false,
		},
		suggestion = {
			debounce = 600,
			throttle = 600,
		},
	},
	specs = {
		{ "AstroNvim/astroui", opts = { icons = { Avante = "" } } },
		{ -- if copilot.lua is available, default to copilot provider
			"zbirenbaum/copilot.lua",
			optional = true,
			specs = {
				{
					"yetone/avante.nvim",
					opts = {
						provider = "copilot",
						auto_suggestions_provider = "copilot",
					},
				},
			},
		},
		{
			-- make sure `Avante` is added as a filetype
			"MeanderingProgrammer/render-markdown.nvim",
			optional = true,
			opts = function(_, opts)
				if not opts.file_types then
					opts.file_types = { "markdown" }
				end
				opts.file_types = require("astrocore").list_insert_unique(opts.file_types, { "Avante" })
			end,
		},
		{
			-- make sure `Avante` is added as a filetype
			"OXY2DEV/markview.nvim",
			optional = true,
			opts = function(_, opts)
				if not opts.filetypes then
					opts.filetypes = { "markdown", "quarto", "rmd" }
				end
				opts.filetypes = require("astrocore").list_insert_unique(opts.filetypes, { "Avante" })
			end,
		},
	},
}
