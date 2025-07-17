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
    colorscheme = "seoul256-light",
    -- AstroUI allows youjj to easily modify highlight groups easily for any and all colorschemes
    -- colorscheme = "horizon",
    -- colorscheme = "onedark",
    -- colorscheme = "tempus_winter",
    -- colorscheme = "gruvbox",
    highlights = {
      init = { -- this table overrides highlights in all themes
        -- Normal = { bg = "#000000" },
        -- 基础透明设置
        -- Normal = { bg = "none" },
        -- NormalNC = { bg = "none" },
        -- NormalFloat = { bg = "none" },
        -- FloatBorder = { bg = "none" },
        --
        -- -- Neo-tree 完整透明设置
        -- NeoTreeNormal = { bg = "none" },
        -- NeoTreeNormalNC = { bg = "none" },
        -- NeoTreeFloatBorder = { bg = "none" },
        -- NeoTreeFloatTitle = { bg = "none" },
        -- NeoTreeTitleBar = { bg = "none" },
        -- NeoTreeDirectoryName = { bg = "none" },
        -- NeoTreeDirectoryIcon = { bg = "none" },
        -- NeoTreeRootName = { bg = "none" },
        -- NeoTreeFileName = { bg = "none" },
        -- NeoTreeFileIcon = { bg = "none" },
        -- NeoTreeIndentMarker = { bg = "none" },
        -- NeoTreeGitAdded = { bg = "none" },
        -- NeoTreeGitModified = { bg = "none" },
        -- NeoTreeGitDeleted = { bg = "none" },
        -- NeoTreeGitStaged = { bg = "none" },
        -- NeoTreeGitUnstaged = { bg = "none" },
        -- NeoTreeWindowsHidden = { bg = "none" },
        --
        -- -- Neo-tree 边透明设置
        -- NeoTreeWinSeparator = { bg = "none", fg = "none" },
        -- NeoTreeEndOfBuffer = { bg = "none" },
        -- NeoTreeVertSplit = { bg = "none", fg = "none" },
        -- NeoTreeTabSeparatorActive = { bg = "none", fg = "none" },
        -- NeoTreeTabSeparatorInactive = { bg = "none", fg = "none" },
        -- NeoTreeTabActive = { bg = "none" },
        -- NeoTreeTabInactive = { bg = "none" },
        -- WinSeparator = { bg = "none", fg = "none" },
        --
        -- -- 确保分割线也透明
        -- VertSplit = { bg = "none", fg = "none" },
        -- WinBar = { bg = "none" },
        -- WinBarNC = { bg = "none" },
        --
        -- -- Telescope 完整透明设置
        -- TelescopeNormal = { bg = "none" },
        -- TelescopeBorder = { bg = "none" },
        -- TelescopePromptNormal = { bg = "none" },
        -- TelescopePromptBorder = { bg = "none" },
        -- TelescopePromptTitle = { bg = "none" },
        -- TelescopePreviewTitle = { bg = "none" },
        -- TelescopeResultsTitle = { bg = "none" },
        -- TelescopePreviewNormal = { bg = "none" },
        -- TelescopePreviewBorder = { bg = "none" },
        -- TelescopeResultsNormal = { bg = "none" },
        -- TelescopeResultsBorder = { bg = "none" },
        -- TelescopeSelection = { bg = "none" },
        -- TelescopePreviewLine = { bg = "none" },
        -- TelescopePromptPrefix = { bg = "none" },
        -- TelescopeMatching = { bg = "none" },
        --
        -- -- 其他必要的透明设置
        -- SignColumn = { bg = "none" },
        -- LineNr = { bg = "none" },
        -- CursorLine = { bg = "none" },
        -- StatusLine = { bg = "none" },
        -- StatusLineNC = { bg = "none" },
        --
        -- -- Notify 透明设置
        -- NotifyERRORBorder = { bg = "none" },
        -- NotifyWARNBorder = { bg = "none" },
        -- NotifyINFOBorder = { bg = "none" },
        -- NotifyDEBUGBorder = { bg = "none" },
        -- NotifyTRACEBorder = { bg = "none" },
        -- NotifyERRORBody = { bg = "none" },
        -- NotifyWARNBody = { bg = "none" },
        -- NotifyINFOBody = { bg = "none" },
        -- NotifyDEBUGBody = { bg = "none" },
        -- NotifyTRACEBody = { bg = "none" },
        -- NotifyERRORIcon = { bg = "none" },
        -- NotifyWARNIcon = { bg = "none" },
        -- NotifyINFOIcon = { bg = "none" },
        -- NotifyDEBUGIcon = { bg = "none" },
        -- NotifyTRACEIcon = { bg = "none" },
        -- NotifyERRORTitle = { bg = "none" },
        -- NotifyWARNTitle = { bg = "none" },
        -- NotifyINFOTitle = { bg = "none" },
        -- NotifyDEBUGTitle = { bg = "none" },
        -- NotifyTRACETitle = { bg = "none" },
        --
        -- -- Tabline 透明设置
        -- TabLine = { bg = "none" },
        -- TabLineFill = { bg = "none" },
        -- TabLineSel = { bg = "none" },
        -- BufferLineTabClose = { bg = "none" },
        -- BufferlineBufferSelected = { bg = "none" },
        -- BufferLineFill = { bg = "none" },
        -- BufferLineBackground = { bg = "none" },
        -- BufferLineBufferVisible = { bg = "none" },
        -- BufferLineCloseButton = { bg = "none" },
        -- BufferLineCloseButtonVisible = { bg = "none" },
        -- BufferLineCloseButtonSelected = { bg = "none" },
        -- BufferLineModified = { bg = "none" },
        -- BufferLineModifiedVisible = { bg = "none" },
        -- BufferLineModifiedSelected = { bg = "none" },
        -- BufferLineIndicatorSelected = { bg = "none" },
        -- BufferLineSeparator = { bg = "none", fg = "none" },
        -- BufferLineSeparatorVisible = { bg = "none", fg = "none" },
        -- BufferLineSeparatorSelected = { bg = "none", fg = "none" },
        --
        -- -- Neo-tree 标签区域完整透明设置
        -- NeoTreeTabOuter = { bg = "none" },
        -- NeoTreeTabOuterActive = { bg = "none" },
        -- NeoTreeTabOuterInactive = { bg = "none" },
        --
        -- -- Extmarks 相关设置
        -- NeoTreeTabInactiveInner = { bg = "none" },
        -- NeoTreeTabActiveInner = { bg = "none" },
        -- NeoTreeTabInactiveOuter = { bg = "none" },
        -- NeoTreeTabActiveOuter = { bg = "none" },
        -- NeoTreeTabInactiveMark = { bg = "none" },
        -- NeoTreeTabActiveMark = { bg = "none" },
        -- NeoTreeTabMarker = { bg = "none" },
        -- NeoTreeTabMarkInactive = { bg = "none" },
        -- NeoTreeTabMarkActive = { bg = "none" },
        -- NeoTreeTabExtmark = { bg = "none" },
        -- NeoTreeTabExtmarkActive = { bg = "none" },
        -- NeoTreeTabExtmarkInactive = { bg = "none" },
        -- Separator = { bg = "none", fg = "none" },
        -- NeoTreeTabSeparator = { bg = "none", fg = "none" },
        -- NeoTreeTabContainer = { bg = "none" },
        -- NeoTreeTabContainerActive = { bg = "none" },
        -- NeoTreeTabContainerInactive = { bg = "none" },
        -- NeoTreeTabSpacing = { bg = "none" },
        -- NeoTreeTabSpacingActive = { bg = "none" },
        -- NeoTreeTabSpacingInactive = { bg = "none" },
        -- NeoTreeTabFill = { bg = "none" },
        -- NeoTreeTabFillActive = { bg = "none" },
        -- NeoTreeTabFillInactive = { bg = "none" },
        -- NeoTreeTabContent = { bg = "none" },
        -- NeoTreeTabContentActive = { bg = "none" },
        -- NeoTreeTabContentInactive = { bg = "none" },
        --
        -- -- Extmarks 相关设置
        -- ExtmarkSign = { bg = "none" },
        -- ExtmarkSignActive = { bg = "none" },
        -- ExtmarkSignInactive = { bg = "none" },
        -- ExtmarkText = { bg = "none" },
        -- ExtmarkTextActive = { bg = "none" },
        -- ExtmarkTextInactive = { bg = "none" },
        --
        -- -- 补全菜单透明设置
        -- Pmenu = { bg = "none" },
        -- PmenuSel = { bg = "none" },
        -- PmenuSbar = { bg = "none" },
        -- PmenuThumb = { bg = "none" },
        --
        -- -- 确保空白行也透明
        -- NonText = { bg = "none", fg = "none" },
        -- Whitespace = { bg = "none" },
        --
        -- -- 再次确保空白行与缓冲区外行透明
        -- EndOfBuffer = { bg = "none", fg = "none" },
      },
      astrodark = { -- a table of overrides/changes when applying the astrotheme theme
        -- Normal = { bg = "#000000" },
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
            -- Basic colors
            fg = "#4e4e4e",
            bg = "#e8e8e8",
            section_fg = "#4e4e4e",
            section_bg = "#e8e8e8",

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

            -- Winbar colors
            winbar_fg = "#4e4e4e",
            winbar_bg = "#d7d7d7",
            winbarnc_fg = "#9e9e9e",
            winbarnc_bg = "#e8e8e8",

            -- Buffer colors
            buffer_fg = "#9e9e9e",
            buffer_path_fg = "#767676",
            buffer_close_fg = "#9e9e9e",
            buffer_bg = "#e8e8e8",
            buffer_active_fg = "#4e4e4e",
            buffer_active_path_fg = "#767676",
            buffer_active_close_fg = "#d70000",
            buffer_active_bg = "#d7d7d7",
            buffer_visible_fg = "#4e4e4e",
            buffer_visible_path_fg = "#767676",
            buffer_visible_close_fg = "#d70000",
            buffer_visible_bg = "#d7d7d7",

            -- Tabline colors
            tabline_bg = "#e8e8e8",
            tabline_fg = "#4e4e4e",
            tab_fg = "#9e9e9e",
            tab_bg = "#e8e8e8",
            tab_active_fg = "#4e4e4e",
            tab_active_bg = "#d7d7d7",
            tab_close_fg = "#d70000",
            tab_close_bg = "#e8e8e8",

            -- Scrollbar
            scrollbar = "#875f87",
          }
        else
          -- Seoul256 Dark Mode Colors
          return {
            -- Basic colors
            fg = "#d0d0d0",
            bg = "#3a3a3a",
            section_fg = "#d0d0d0",
            section_bg = "#3a3a3a",

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

            -- Winbar colors
            winbar_fg = "#d0d0d0",
            winbar_bg = "#4e4e4e",
            winbarnc_fg = "#808080",
            winbarnc_bg = "#3a3a3a",

            -- Buffer colors
            buffer_fg = "#808080",
            buffer_path_fg = "#626262",
            buffer_close_fg = "#808080",
            buffer_bg = "#3a3a3a",
            buffer_active_fg = "#d0d0d0",
            buffer_active_path_fg = "#949494",
            buffer_active_close_fg = "#ff5f5f",
            buffer_active_bg = "#4e4e4e",
            buffer_visible_fg = "#d0d0d0",
            buffer_visible_path_fg = "#949494",
            buffer_visible_close_fg = "#ff5f5f",
            buffer_visible_bg = "#4e4e4e",

            -- Tabline colors
            tabline_bg = "#3a3a3a",
            tabline_fg = "#d0d0d0",
            tab_fg = "#808080",
            tab_bg = "#3a3a3a",
            tab_active_fg = "#d0d0d0",
            tab_active_bg = "#4e4e4e",
            tab_close_fg = "#ff5f5f",
            tab_close_bg = "#3a3a3a",

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
          tabline = function(self) return self.is_active or self.is_visible end,
          statusline = true,
          winbar = false,
        },
      },
    },
  },
}
