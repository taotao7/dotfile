---@type LazySpec
return {
  "AstroNvim/astroui",
  opts = {
    highlights = {
      init = {
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

        -- Neo-tree 边框完整透明设置
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
      },
    },
  },
}
