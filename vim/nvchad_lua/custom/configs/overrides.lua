local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "vue",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "json",
    "go",
    "python",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    -- "deno",
    "prettier",
    "tailwindcss-language-server",
    "vue-language-server",
    "emmet-language-server",
    "eslint-lsp",

    -- python
    "pyright",
    "black",

    -- other
    "yaml-language-server",
    "dockerfile-language-server",

    -- golang
    -- "gopls",
    -- c/c++
    -- "clangd",
    -- "clang-format",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },
  view = {
    width = 45,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
