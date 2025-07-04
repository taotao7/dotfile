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
    colorscheme = "oxocarbon",
    -- AstroUI allows youjj to easily modify highlight groups easily for any and all colorschemes
    -- colorscheme = "horizon",
    -- colorscheme = "onedark",
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
  },
}
