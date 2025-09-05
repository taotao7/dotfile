-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
	"AstroNvim/astroui",
	---@type AstroUIOpts
	opts = {
		-- change colorscheme
		-- colorscheme = "noctis_lux",
		-- colorscheme = "oxocarbon",
		-- colorscheme = "seoul256-light",
		-- AstroUI allows youjj to easily modify highlight groups easily for any and all colorschemes
		colorscheme = "monokai-pro",
		-- colorscheme = "horizon",
		-- colorscheme = "onedark",
		-- colorscheme = "everforest",
		-- colorscheme = "tempus_winter",
		-- colorscheme = "gruvbox",
		highlights = {
			init = { -- this table overrides highlights in all themes
				-- Normal = { bg = "#000000" },
				-- 基础透明设置
				Normal = { bg = "none" },
				NormalNC = { bg = "none" },
				NormalFloat = { bg = "none" },
				FloatBorder = { bg = "none" },

				-- Neo-tree 完整透明设置
				NeoTreeNormal = { bg = "none" },
				NeoTreeNormalNC = { bg = "none" },
				NeoTreeFloatBorder = { bg = "none" },
				NeoTreeFloatTitle = { bg = "none" },
				NeoTreeTitleBar = { bg = "none" },
				NeoTreeDirectoryName = { bg = "none" },
				NeoTreeDirectoryIcon = { bg = "none" },
				NeoTreeRootName = { bg = "none" },
				NeoTreeFileName = { bg = "none" },
				NeoTreeFileIcon = { bg = "none" },
				NeoTreeIndentMarker = { bg = "none" },
				NeoTreeGitAdded = { bg = "none" },
				NeoTreeGitModified = { bg = "none" },
				NeoTreeGitDeleted = { bg = "none" },
				NeoTreeGitStaged = { bg = "none" },
				NeoTreeGitUnstaged = { bg = "none" },
				NeoTreeWindowsHidden = { bg = "none" },

				-- Neo-tree 边透明设置
				NeoTreeWinSeparator = { bg = "none", fg = "none" },
				NeoTreeEndOfBuffer = { bg = "none" },
				NeoTreeVertSplit = { bg = "none", fg = "none" },
				NeoTreeTabSeparatorActive = { bg = "none", fg = "none" },
				NeoTreeTabSeparatorInactive = { bg = "none", fg = "none" },
				NeoTreeTabActive = { bg = "none" },
				NeoTreeTabInactive = { bg = "none" },
				WinSeparator = { bg = "none", fg = "none" },

				-- 确保分割线也透明
				VertSplit = { bg = "none", fg = "none" },
				WinBar = { bg = "none" },
				WinBarNC = { bg = "none" },

				-- Telescope 完整透明设置
				TelescopeNormal = { bg = "none" },
				TelescopeBorder = { bg = "none" },
				TelescopePromptNormal = { bg = "none" },
				TelescopePromptBorder = { bg = "none" },
				TelescopePromptTitle = { bg = "none" },
				TelescopePreviewTitle = { bg = "none" },
				TelescopeResultsTitle = { bg = "none" },
				TelescopePreviewNormal = { bg = "none" },
				TelescopePreviewBorder = { bg = "none" },
				TelescopeResultsNormal = { bg = "none" },
				TelescopeResultsBorder = { bg = "none" },
				TelescopeSelection = { bg = "none" },
				TelescopePreviewLine = { bg = "none" },
				TelescopePromptPrefix = { bg = "none" },
				TelescopeMatching = { bg = "none" },

				-- 其他必要的透明设置
				SignColumn = { bg = "none" },
				LineNr = { bg = "none" },
				CursorLine = { bg = "none" },
				StatusLine = { bg = "none" },
				StatusLineNC = { bg = "none" },

				-- 行号相关透明设置
				LineNrAbove = { bg = "none" },
				LineNrBelow = { bg = "none" },
				CursorLineNr = { bg = "none" },
				CursorLineSign = { bg = "none" },
				CursorLineFold = { bg = "none" },

				-- 其他可能的行相关高亮组
				Cursor = { bg = "none" },
				lCursor = { bg = "none" },
				CursorIM = { bg = "none" },
				TermCursor = { bg = "none" },
				TermCursorNC = { bg = "none" },

				-- 额外的行相关透明设置
				LineNrRelative = { bg = "none" },
				LineNrRelativeAbove = { bg = "none" },
				LineNrRelativeBelow = { bg = "none" },
				LineNrRelativeCurrent = { bg = "none" },
				LineNrRelativeAboveCurrent = { bg = "none" },
				LineNrRelativeBelowCurrent = { bg = "none" },

				-- 确保所有可能的选中状态都透明
				CursorLine = { bg = "none" },
				CursorLineNr = { bg = "none" },
				CursorLineSign = { bg = "none" },
				CursorLineFold = { bg = "none" },
				CursorLineText = { bg = "none" },

				-- GitSigns 透明设置 - 更全面的设置
				GitSignsAdd = { bg = "none" },
				GitSignsChange = { bg = "none" },
				GitSignsDelete = { bg = "none" },
				GitSignsChangedelete = { bg = "none" },
				GitSignsTopdelete = { bg = "none" },
				GitSignsUntracked = { bg = "none" },
				GitSignsAddNr = { bg = "none" },
				GitSignsChangeNr = { bg = "none" },
				GitSignsDeleteNr = { bg = "none" },
				GitSignsChangedeleteNr = { bg = "none" },
				GitSignsTopdeleteNr = { bg = "none" },
				GitSignsUntrackedNr = { bg = "none" },
				GitSignsAddLn = { bg = "none" },
				GitSignsChangeLn = { bg = "none" },
				GitSignsChangedeleteLn = { bg = "none" },
				GitSignsUntrackedLn = { bg = "none" },

				-- 额外的 GitSigns 高亮组
				GitSignsAddInline = { bg = "none" },
				GitSignsChangeInline = { bg = "none" },
				GitSignsDeleteInline = { bg = "none" },
				GitSignsChangedeleteInline = { bg = "none" },
				GitSignsTopdeleteInline = { bg = "none" },
				GitSignsUntrackedInline = { bg = "none" },

				-- 确保其他可能的git相关标记也透明
				DiffAdd = { bg = "none" },
				DiffChange = { bg = "none" },
				DiffDelete = { bg = "none" },
				DiffText = { bg = "none" },

				-- 额外的 diff 相关高亮组
				DiffAdded = { bg = "none" },
				DiffRemoved = { bg = "none" },
				DiffModified = { bg = "none" },

				-- 确保 SignColumn 完全透明
				SignColumn = { bg = "none", sp = "none" },

				-- 确保行号区域完全透明
				LineNr = { bg = "none" },
				LineNrAbove = { bg = "none" },
				LineNrBelow = { bg = "none" },
				CursorLineNr = { bg = "none" },
				CursorLineSign = { bg = "none" },
				CursorLineFold = { bg = "none" },

				-- 确保选中行完全透明
				CursorLine = { bg = "none" },
				-- Visual 模式需要可见的选中效果（深色模式）
				Visual = { bg = "#404040", fg = "#ffffff" },
				VisualNOS = { bg = "#404040", fg = "#ffffff" },
				VisualInDiff = { bg = "#404040", fg = "#ffffff" },
				-- 浅色模式下的 Visual 效果
				VisualLight = { bg = "#e0e0e0", fg = "#000000" },

				-- 强制设置所有可能的 GitSigns 高亮组为透明
				GitSignsAdd = { bg = "none", fg = "#87d75f" },
				GitSignsChange = { bg = "none", fg = "#ffaf5f" },
				GitSignsDelete = { bg = "none", fg = "#ff5f5f" },
				GitSignsChangedelete = { bg = "none", fg = "#ffaf5f" },
				GitSignsTopdelete = { bg = "none", fg = "#ff5f5f" },
				GitSignsUntracked = { bg = "none", fg = "#87d75f" },

				-- 行号区域的 GitSigns
				GitSignsAddNr = { bg = "none", fg = "#87d75f" },
				GitSignsChangeNr = { bg = "none", fg = "#ffaf5f" },
				GitSignsDeleteNr = { bg = "none", fg = "#ff5f5f" },
				GitSignsChangedeleteNr = { bg = "none", fg = "#ffaf5f" },
				GitSignsTopdeleteNr = { bg = "none", fg = "#ff5f5f" },
				GitSignsUntrackedNr = { bg = "none", fg = "#87d75f" },

				-- 行内容区域的 GitSigns
				GitSignsAddLn = { bg = "none", fg = "#87d75f" },
				GitSignsChangeLn = { bg = "none", fg = "#ffaf5f" },
				GitSignsChangedeleteLn = { bg = "none", fg = "#ffaf5f" },
				GitSignsUntrackedLn = { bg = "none", fg = "#87d75f" },

				-- Notify 透明设置
				NotifyERRORBorder = { bg = "none" },
				NotifyWARNBorder = { bg = "none" },
				NotifyINFOBorder = { bg = "none" },
				NotifyDEBUGBorder = { bg = "none" },
				NotifyTRACEBorder = { bg = "none" },
				NotifyERRORBody = { bg = "none" },
				NotifyWARNBody = { bg = "none" },
				NotifyINFOBody = { bg = "none" },
				NotifyDEBUGBody = { bg = "none" },
				NotifyTRACEBody = { bg = "none" },
				NotifyERRORIcon = { bg = "none" },
				NotifyWARNIcon = { bg = "none" },
				NotifyINFOIcon = { bg = "none" },
				NotifyDEBUGIcon = { bg = "none" },
				NotifyTRACEIcon = { bg = "none" },
				NotifyERRORTitle = { bg = "none" },
				NotifyWARNTitle = { bg = "none" },
				NotifyINFOTitle = { bg = "none" },
				NotifyDEBUGTitle = { bg = "none" },
				NotifyTRACETitle = { bg = "none" },

				-- Tabline 透明设置
				TabLine = { bg = "none" },
				TabLineFill = { bg = "none" },
				TabLineSel = { bg = "none" },
				BufferLineTabClose = { bg = "none" },
				BufferlineBufferSelected = { bg = "none" },
				BufferLineFill = { bg = "none" },
				BufferLineBackground = { bg = "none" },
				BufferLineBufferVisible = { bg = "none" },
				BufferLineCloseButton = { bg = "none" },
				BufferLineCloseButtonVisible = { bg = "none" },
				BufferLineCloseButtonSelected = { bg = "none" },
				BufferLineModified = { bg = "none" },
				BufferLineModifiedVisible = { bg = "none" },
				BufferLineModifiedSelected = { bg = "none" },
				BufferLineIndicatorSelected = { bg = "none" },
				BufferLineSeparator = { bg = "none", fg = "none" },
				BufferLineSeparatorVisible = { bg = "none", fg = "none" },
				BufferLineSeparatorSelected = { bg = "none", fg = "none" },

				-- Neo-tree 标签区域完整透明设置
				NeoTreeTabOuter = { bg = "none" },
				NeoTreeTabOuterActive = { bg = "none" },
				NeoTreeTabOuterInactive = { bg = "none" },

				-- Extmarks 相关设置
				NeoTreeTabInactiveInner = { bg = "none" },
				NeoTreeTabActiveInner = { bg = "none" },
				NeoTreeTabInactiveOuter = { bg = "none" },
				NeoTreeTabActiveOuter = { bg = "none" },
				NeoTreeTabInactiveMark = { bg = "none" },
				NeoTreeTabActiveMark = { bg = "none" },
				NeoTreeTabMarker = { bg = "none" },
				NeoTreeTabMarkInactive = { bg = "none" },
				NeoTreeTabMarkActive = { bg = "none" },
				NeoTreeTabExtmark = { bg = "none" },
				NeoTreeTabExtmarkActive = { bg = "none" },
				NeoTreeTabExtmarkInactive = { bg = "none" },
				Separator = { bg = "none", fg = "none" },
				NeoTreeTabSeparator = { bg = "none", fg = "none" },
				NeoTreeTabContainer = { bg = "none" },
				NeoTreeTabContainerActive = { bg = "none" },
				NeoTreeTabContainerInactive = { bg = "none" },
				NeoTreeTabSpacing = { bg = "none" },
				NeoTreeTabSpacingActive = { bg = "none" },
				NeoTreeTabSpacingInactive = { bg = "none" },
				NeoTreeTabFill = { bg = "none" },
				NeoTreeTabFillActive = { bg = "none" },
				NeoTreeTabFillInactive = { bg = "none" },
				NeoTreeTabContent = { bg = "none" },
				NeoTreeTabContentActive = { bg = "none" },
				NeoTreeTabContentInactive = { bg = "none" },

				-- Extmarks 相关设置
				ExtmarkSign = { bg = "none" },
				ExtmarkSignActive = { bg = "none" },
				ExtmarkSignInactive = { bg = "none" },
				ExtmarkText = { bg = "none" },
				ExtmarkTextActive = { bg = "none" },
				ExtmarkTextInactive = { bg = "none" },

				-- 补全菜单透明设置
				Pmenu = { bg = "none" },
				PmenuSel = { bg = "none" },
				PmenuSbar = { bg = "none" },
				PmenuThumb = { bg = "none" },

				-- 确保空白行也透明
				NonText = { bg = "none", fg = "none" },
				Whitespace = { bg = "none" },

				-- 再次确保空白行与缓冲区外行透明
				EndOfBuffer = { bg = "none", fg = "none" },

				-- Snacks.nvim 透明设置
				SnacksNotifierBorder = { bg = "none" },
				SnacksNotifierBody = { bg = "none" },
				SnacksNotifierTitle = { bg = "none" },
				SnacksNotifierIcon = { bg = "none" },
				SnacksNotifierError = { bg = "none" },
				SnacksNotifierWarn = { bg = "none" },
				SnacksNotifierInfo = { bg = "none" },
				SnacksNotifierDebug = { bg = "none" },
				SnacksNotifierTrace = { bg = "none" },
				SnacksNotifierHistory = { bg = "none" },
				SnacksDashboard = { bg = "none" },
				SnacksDashboardNormal = { bg = "none" },
				SnacksDashboardTitle = { bg = "none" },
				SnacksDashboardIcon = { bg = "none" },
				SnacksDashboardDesc = { bg = "none" },
				SnacksDashboardKey = { bg = "none" },
				SnacksDashboardFooter = { bg = "none" },
				SnacksDashboardHeader = { bg = "none" },
				SnacksInput = { bg = "none" },
				SnacksInputBorder = { bg = "none" },
				SnacksInputTitle = { bg = "none" },
				SnacksInputIcon = { bg = "none" },
				SnacksLazygit = { bg = "none" },
				SnacksLazygitBorder = { bg = "none" },
				SnacksLazygitTitle = { bg = "none" },
				SnacksTerminal = { bg = "none" },
				SnacksTerminalBorder = { bg = "none" },
				SnacksTerminalTitle = { bg = "none" },
				SnacksWin = { bg = "none" },
				SnacksWinBorder = { bg = "none" },
				SnacksWinTitle = { bg = "none" },
				SnacksScratch = { bg = "none" },
				SnacksScratchBorder = { bg = "none" },
				SnacksScratchTitle = { bg = "none" },

				-- Noice.nvim 透明设置
				NoiceCmdline = { bg = "none" },
				NoiceCmdlinePopup = { bg = "none" },
				NoiceCmdlinePopupBorder = { bg = "none" },
				NoiceCmdlinePopupTitle = { bg = "none" },
				NoiceCmdlineIcon = { bg = "none" },
				NoiceCompletionItemMenu = { bg = "none" },
				NoiceCompletionItemWord = { bg = "none" },
				NoiceConfirm = { bg = "none" },
				NoiceConfirmBorder = { bg = "none" },
				NoiceCursor = { bg = "none" },
				NoiceMini = { bg = "none" },
				NoicePopup = { bg = "none" },
				NoicePopupBorder = { bg = "none" },
				NoicePopupmenu = { bg = "none" },
				NoicePopupmenuBorder = { bg = "none" },
				NoicePopupmenuMatch = { bg = "none" },
				NoicePopupmenuSelected = { bg = "none" },
				NoiceScrollbar = { bg = "none" },
				NoiceScrollbarThumb = { bg = "none" },
				NoiceSplit = { bg = "none" },
				NoiceSplitBorder = { bg = "none" },
				NoiceVirtualText = { bg = "none" },
				NoiceFormatConfirm = { bg = "none" },
				NoiceFormatConfirmDefault = { bg = "none" },
				NoiceFormatDate = { bg = "none" },
				NoiceFormatEvent = { bg = "none" },
				NoiceFormatKind = { bg = "none" },
				NoiceFormatLevelDebug = { bg = "none" },
				NoiceFormatLevelError = { bg = "none" },
				NoiceFormatLevelInfo = { bg = "none" },
				NoiceFormatLevelOff = { bg = "none" },
				NoiceFormatLevelTrace = { bg = "none" },
				NoiceFormatLevelWarn = { bg = "none" },
				NoiceFormatProgressDone = { bg = "none" },
				NoiceFormatProgressTodo = { bg = "none" },
				NoiceFormatTitle = { bg = "none" },
				NoiceLspProgressClient = { bg = "none" },
				NoiceLspProgressSpinner = { bg = "none" },
				NoiceLspProgressTitle = { bg = "none" },
			},
			astrodark = { -- a table of overrides/changes when applying the astrotheme theme
				-- Normal = { bg = "#000000" },
				-- 确保在 astrodark 主题下 Visual 模式可见
				-- Visual = { bg = "#404040", fg = "#ffffff" },
				-- VisualNOS = { bg = "#404040", fg = "#ffffff" },
				-- VisualInDiff = { bg = "#404040", fg = "#ffffff" },
			},
		},
		-- Icons can be configured throughout the interface
		icons = {
			-- configure the loading of the lsp in the status line
			LSPLoading1 = "⠋",
			LSPLoading2 = "⠙",
			LSPLoading3 = "⠹",
			LSPLoading4 = "⠸",
			LSPLoading5 = "⠼",
			LSPLoading6 = "⠴",
			LSPLoading7 = "⠦",
			LSPLoading8 = "⠧",
			LSPLoading9 = "⠇",
			LSPLoading10 = "⠏",
		},

		-- Seoul256 Status Line Configuration
		status = {
			-- Seoul256 color scheme for both light and dark modes
			colors = function(hl)
				local get_hlgroup = require("astroui").get_hlgroup

				-- Detect if we're in light or dark mode
				local bg = vim.opt.background:get()

				if bg == "light" then
					-- Seoul256 Light Mode Colors
					return {
						-- Basic colors - 设置为透明
						fg = "#4e4e4e",
						bg = "none",
						section_fg = "#4e4e4e",
						section_bg = "none",

						-- Mode colors (light mode)
						normal = "#5f8700", -- Green
						insert = "#0087d7", -- Blue
						visual = "#d75f00", -- Orange
						replace = "#d70000", -- Red
						command = "#8700d7", -- Purple
						terminal = "#005f87", -- Dark Blue
						inactive = "#9e9e9e", -- Gray

						-- Git colors (light mode)
						git_branch_fg = "#875f00", -- Brown
						git_added = "#5f8700", -- Green
						git_changed = "#d75f00", -- Orange
						git_removed = "#d70000", -- Red

						-- LSP/Diagnostic colors (light mode)
						diag_ERROR = "#d70000", -- Red
						diag_WARN = "#d75f00", -- Orange
						diag_INFO = "#0087d7", -- Blue
						diag_HINT = "#5f8700", -- Green

						-- TreeSitter
						treesitter_fg = "#875f87", -- Purple

						-- Winbar colors - 设置为透明
						winbar_fg = "#4e4e4e",
						winbar_bg = "none",
						winbarnc_fg = "#9e9e9e",
						winbarnc_bg = "none",

						-- Buffer colors - 设置为透明
						buffer_fg = "#9e9e9e",
						buffer_path_fg = "#767676",
						buffer_close_fg = "#9e9e9e",
						buffer_bg = "none",
						buffer_active_fg = "#4e4e4e",
						buffer_active_path_fg = "#767676",
						buffer_active_close_fg = "#d70000",
						buffer_active_bg = "none",
						buffer_visible_fg = "#4e4e4e",
						buffer_visible_path_fg = "#767676",
						buffer_visible_close_fg = "#d70000",
						buffer_visible_bg = "none",

						-- Tabline colors - 设置为透明
						tabline_bg = "none",
						tabline_fg = "#4e4e4e",
						tab_fg = "#9e9e9e",
						tab_bg = "none",
						tab_active_fg = "#4e4e4e",
						tab_active_bg = "none",
						tab_close_fg = "#d70000",
						tab_close_bg = "none",

						-- Scrollbar
						scrollbar = "#875f87",
					}
				else
					-- Seoul256 Dark Mode Colors
					return {
						-- Basic colors - 设置为透明
						fg = "#d0d0d0",
						bg = "none",
						section_fg = "#d0d0d0",
						section_bg = "none",

						-- Mode colors (dark mode)
						normal = "#87d75f", -- Light Green
						insert = "#5fafd7", -- Light Blue
						visual = "#ffaf5f", -- Light Orange
						replace = "#ff5f5f", -- Light Red
						command = "#d787ff", -- Light Purple
						terminal = "#5f87af", -- Medium Blue
						inactive = "#626262", -- Dark Gray

						-- Git colors (dark mode)
						git_branch_fg = "#dfaf87", -- Light Brown
						git_added = "#87d75f", -- Light Green
						git_changed = "#ffaf5f", -- Light Orange
						git_removed = "#ff5f5f", -- Light Red

						-- LSP/Diagnostic colors (dark mode)
						diag_ERROR = "#ff5f5f", -- Light Red
						diag_WARN = "#ffaf5f", -- Light Orange
						diag_INFO = "#5fafd7", -- Light Blue
						diag_HINT = "#87d75f", -- Light Green

						-- TreeSitter
						treesitter_fg = "#d7afd7", -- Light Purple

						-- Winbar colors - 设置为透明
						winbar_fg = "#d0d0d0",
						winbar_bg = "none",
						winbarnc_fg = "#808080",
						winbarnc_bg = "none",

						-- Buffer colors - 设置为透明
						buffer_fg = "#808080",
						buffer_path_fg = "#626262",
						buffer_close_fg = "#808080",
						buffer_bg = "none",
						buffer_active_fg = "#d0d0d0",
						buffer_active_path_fg = "#949494",
						buffer_active_close_fg = "#ff5f5f",
						buffer_active_bg = "none",
						buffer_visible_fg = "#d0d0d0",
						buffer_visible_path_fg = "#949494",
						buffer_visible_close_fg = "#ff5f5f",
						buffer_visible_bg = "none",

						-- Tabline colors - 设置为透明
						tabline_bg = "none",
						tabline_fg = "#d0d0d0",
						tab_fg = "#808080",
						tab_bg = "none",
						tab_active_fg = "#d0d0d0",
						tab_active_bg = "none",
						tab_close_fg = "#ff5f5f",
						tab_close_bg = "none",

						-- Scrollbar
						scrollbar = "#d7afd7",
					}
				end
			end,

			-- Seoul256 separators
			separators = {
				none = { "", "" },
				left = { "", "  " },
				right = { "  ", "" },
				center = { "  ", "  " },
				tab = { "", " " },
				breadcrumbs = "  ",
				path = "  ",
			},

			-- Seoul256 attributes
			attributes = {
				buffer_active = { bold = true },
				buffer_picker = { bold = true },
				macro_recording = { bold = true },
				git_branch = { bold = true },
				git_diff = { bold = true },
				mode = { bold = true },
			},

			-- Icon highlights
			icon_highlights = {
				breadcrumbs = false,
				file_icon = {
					tabline = function(self)
						return self.is_active or self.is_visible
					end,
					statusline = true,
					winbar = false,
				},
			},
		},
	},
}
