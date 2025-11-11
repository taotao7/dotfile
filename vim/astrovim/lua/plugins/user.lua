-- You can also add or configure plugins by creating files in this `plugins/` folder
-- PLEASE REMOVE THE EXAMPLES YOU HAVE NO INTEREST IN BEFORE ENABLING THIS FILE
-- Here are some examples:

---@type LazySpec
return {
	"andweeb/presence.nvim",
	{
		"ray-x/lsp_signature.nvim",
		event = "BufRead",
		config = function()
			require("lsp_signature").setup()
		end,
	},
	{
		"folke/snacks.nvim",
		opts = {
			indent = {
				enabled = false,
			},
			dashboard = {
				preset = {
					header = table.concat({
						" ████████╗ █████╗  ██████╗       ███████╗",
						" ╚══██╔══╝██╔══██╗██╔═══██╗      ██╔════╝",
						"    ██║   ███████║██║   ██║█████╗███████╗",
						"    ██║   ██╔══██║██║   ██║╚════╝╚════██║",
						"    ██║   ██║  ██║╚██████╔╝      ███████║",
						"    ╚═╝   ╚═╝  ╚═╝ ╚═════╝       ╚══════╝",
					}, "\n"),
				},
			},
		},
	},

	-- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
	{
		"L3MON4D3/LuaSnip",
		config = function(plugin, opts)
			require("astronvim.plugins.configs.luasnip")(plugin, opts) -- include the default astronvim config that calls the setup call
			-- add more custom luasnip configuration such as filetype extend or custom snippets
			local luasnip = require("luasnip")
			luasnip.filetype_extend("javascript", { "javascriptreact" })
		end,
	},

	{
		"windwp/nvim-autopairs",
		config = function(plugin, opts)
			require("astronvim.plugins.configs.nvim-autopairs")(plugin, opts) -- include the default astronvim config that calls the setup call
			-- add more custom autopairs configuration such as custom rules
			local npairs = require("nvim-autopairs")
			local Rule = require("nvim-autopairs.rule")
			local cond = require("nvim-autopairs.conds")
			npairs.add_rules(
				{
					Rule("$", "$", { "tex", "latex" })
						-- don't add a pair if the next character is %
						:with_pair(cond.not_after_regex("%%"))
						-- don't add a pair if  the previous character is xxx
						:with_pair(
							cond.not_before_regex("xxx", 3)
						)
						-- don't move right when repeat character
						:with_move(cond.none())
						-- don't delete if the next character is xx
						:with_del(cond.not_after_regex("xx"))
						-- disable adding a newline when you press <cr>
						:with_cr(cond.none()),
				},
				-- disable for .vim files, but it work for another filetypes
				Rule("a", "a", "-vim")
			)
		end,
	},
	{
		"talha-akram/noctis.nvim",
		enabled = true,
	},
	{
		"junegunn/seoul256.vim",
		enabled = false,
	},
	{
		"p00f/alabaster.nvim",
		enabled = false,
	},
	{ "akinsho/horizon.nvim", version = "*", enabled = true },
	{
		"augmentcode/augment.vim",
		config = function()
			vim.g.augment_workspace_folders = { "/home/tao/workspace" }
			-- require("snacks").setup({
		end,
		enabled = false,
	},
	{ "EdenEast/nightfox.nvim", enabled = false },
	-- {
	--   "augmentcode/augment.vim",
	--   config = function(plugin, opts)
	--   vim.g.augment_workspace_folders = ["/Users/tao/workspace/org-management-temp"]
	-- end,
	-- },
	{ "yetone/avante.nvim", enabled = false },
	{
		"coder/claudecode.nvim",
		dependencies = { "folke/snacks.nvim" },
		enabled = true,
		config = true,
		-- keys = {
		-- 	{ "<leader>a",  nil,                              desc = "AI/Claude Code" },
		-- 	{ "<leader>ac", "<cmd>ClaudeCode<cr>",            desc = "Toggle Claude" },
		-- 	{ "<leader>af", "<cmd>ClaudeCodeFocus<cr>",       desc = "Focus Claude" },
		-- 	{ "<leader>ar", "<cmd>ClaudeCode --resume<cr>",   desc = "Resume Claude" },
		-- 	{ "<leader>aC", "<cmd>ClaudeCode --continue<cr>", desc = "Continue Claude" },
		-- 	{ "<leader>am", "<cmd>ClaudeCodeSelectModel<cr>", desc = "Select Claude model" },
		-- 	{ "<leader>ab", "<cmd>ClaudeCodeAdd %<cr>",       desc = "Add current buffer" },
		-- 	{ "<leader>as", "<cmd>ClaudeCodeSend<cr>",        mode = "v",                  desc = "Send to Claude" },
		-- 	{
		-- 		"<leader>as",
		-- 		"<cmd>ClaudeCodeTreeAdd<cr>",
		-- 		desc = "Add file",
		-- 		ft = { "NvimTree", "neo-tree", "oil" },
		-- 	},
		-- 	-- Diff management
		-- 	{ "<leader>aa", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
		-- 	{ "<leader>ad", "<cmd>ClaudeCodeDiffDeny<cr>",   desc = "Deny diff" },
		-- },
	},
	-- {
	-- 	"marcinjahn/gemini-cli.nvim",
	-- 	cmd = "Gemini",
	-- 	-- Example key mappings for common actions:
	-- 	keys = {
	-- 		{ "<leader>a/", "<cmd>Gemini toggle<cr>", desc = "Toggle Gemini CLI" },
	-- 		{ "<leader>aa", "<cmd>Gemini ask<cr>", desc = "Ask Gemini", mode = { "n", "v" } },
	-- 		{ "<leader>af", "<cmd>Gemini add_file<cr>", desc = "Add File" },
	-- 	},
	-- 	dependencies = {
	-- 		"folke/snacks.nvim",
	-- 	},
	-- 	config = true,
	-- },
	{ "supermaven-inc/supermaven-nvim", enabled = false },
	{
		"rebelot/heirline.nvim",
		opts = function(_, opts)
			opts.winbar = nil
		end,
	},
	{
		"sourcegraph/amp.nvim",
		enabled = false,
		branch = "main",
		lazy = false,
		opts = { auto_start = true, log_level = "info" },
	},
	{
		"taotao7/i18n.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
		},
		enabled = false,
		config = function()
			require("i18n").setup({
				func_pattern = {
					"t",
					"$t",
					{ call = "i18n.t" },
				},
				func_type = { "vue", "typescript" },
				usage = { popup_type = "snacks" },
				show_mode = "translation_conceal",
			})
		end,
	},
	-- auto change theme
	{
		"f-person/auto-dark-mode.nvim",
		opts = {
			set_dark_mode = function()
				vim.api.nvim_set_option_value("background", "dark", {})
				vim.g.everforest_background = "hard"
				vim.cmd("colorscheme everforest")
			end,
			set_light_mode = function()
				vim.api.nvim_set_option_value("background", "light", {})
				vim.g.everforest_background = "hard"
				vim.cmd("colorscheme everforest")
			end,
			update_interval = 3000,
			fallback = "dark",
		},
	},
}
