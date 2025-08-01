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
			ask = prefix .. "c",
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
		provider = "zhipu",
		-- auto_suggestions_provider = "openrouter",
		providers = {
			deepseek = {
				__inherited_from = "openai",
				api_key_name = "DEEPSEEK_API_KEY",
				endpoint = "https://api.deepseek.com",
				model = "deepseek-reasoner",
			},
			zhipu = {
				__inherited_from = "openai",
				api_key_name = "ZHIPU",
				endpoint = "https://open.bigmodel.cn/api/paas/v4/",
				model = "glm-4.5",
			},
			openrouter = {
				__inherited_from = "openai",
				endpoint = "https://openrouter.ai/api/v1",
				api_key_name = "OPENROUTER_API_KEY",
				model = "anthropic/claude-sonnet-4",
			},
			claude = {
				endpoint = "https://api.302.ai",
				model = "claude-sonnet-4",
				extra_request_body = {
					temperature = 0.75,
					max_tokens = 20480,
				},
			},
			moonshot = {
				endpoint = "https://api.moonshot.cn/v1",
				api_key_name = "MOONSHOT_API_KEY",
				model = "kimi-k2-0711-preview",
				timeout = 30000, -- Timeout in milliseconds
				extra_request_body = {
					temperature = 0.75,
					max_tokens = 32768,
				},
			},
		},
		behaviour = {
			auto_suggestions = false,
			auto_set_highlight_group = true,
			auto_set_keymaps = true,
			enable_fastapply = true,
			auto_apply_diff_after_generation = true,
			support_paste_from_clipboard = false,
			minimize_diff = true,
			enable_token_counting = true,
			enable_cursor_planning_mode = true,
			enable_claude_text_editor_tool_mode = true,
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
			-- support for image pasting
			"HakonHarnes/img-clip.nvim",
			event = "VeryLazy",
			opts = {
				-- recommended settings
				default = {
					embed_image_as_base64 = false,
					prompt_for_file_name = false,
					drag_and_drop = {
						insert_mode = true,
					},
					-- required for Windows users
					use_absolute_path = true,
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
		{
			"folke/snacks.nvim",
			optional = true,
			specs = {
				{
					"yetone/avante.nvim",
					opts = {
						selector = {
							provider = "snacks",
						},
					},
				},
			},
		},
		{
			"nvim-neo-tree/neo-tree.nvim",
			optional = true,
			opts = {
				filesystem = {
					commands = {
						avante_add_files = function(state)
							local node = state.tree:get_node()
							local filepath = node:get_id()
							local relative_path = require("avante.utils").relative_path(filepath)

							local sidebar = require("avante").get()

							local open = sidebar:is_open()
							-- ensure avante sidebar is open
							if not open then
								require("avante.api").ask()
								sidebar = require("avante").get()
							end

							sidebar.file_selector:add_selected_file(relative_path)

							-- remove neo tree buffer
							if not open then
								sidebar.file_selector:remove_selected_file("neo-tree filesystem [1]")
							end
						end,
					},
					window = {
						mappings = {
							["oa"] = "avante_add_files",
						},
					},
				},
			},
		},
	},
}
