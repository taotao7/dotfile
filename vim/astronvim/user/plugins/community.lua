return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- themes
  { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.colorscheme.everforest" },
  -- { import = "astrocommunity.colorscheme.onedarkpro-nvim" },
  -- { import = "astrocommunity.colorscheme.gruvbox-baby" },
  -- completion
  { import = "astrocommunity.completion.codeium-vim" },
  --  pack
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.typescript" },
  -- { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.bash" },
  -- { import = "astrocommunity.pack.cs" },
  -- { import = "astrocommunity.pack.markdown" },
  -- motion
  { import = "astrocommunity.motion.hop-nvim" },
  -- lsp
  { import = "astrocommunity.lsp.garbage-day-nvim" },
  { import = "astrocommunity.lsp.lsp-lens-nvim" },
  { import = "astrocommunity.lsp.lsp-inlayhints-nvim" },
  { import = "astrocommunity.lsp.lsp-signature-nvim" },
  -- diagnostics
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  -- markdown-and-latex
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  -- indent
  -- { import = "astrocommunity.indent/indent-blankline-nvim" },
  { import = "astrocommunity.indent/mini-indentscope" },
  -- scrolling
  { import = "astrocommunity.scrolling/neoscroll-nvim" },
}
