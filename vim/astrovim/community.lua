-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
  -- themes
  -- { import = "astrocommunity.colorscheme.oxocarbon-nvim" },
  -- { import = "astrocommunity.colorscheme.kanagawa-nvim" },
  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.colorscheme.everforest" },
  -- { import = "astrocommunity.colorscheme.gruvbox-nvim" },
  -- { import = "astrocommunity.colorscheme.onedarkpro-nvim" },
  -- { import = "astrocommunity.colorscheme.gruvbox-baby" },
  -- colors
  -- { import = "astrocommunity.color.transparent-nvim" },
  -- completion
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.completion.codeium-vim" },
  -- { import = "astrocommunity.completion.coq_nvim" },
  --  pack
  -- { import = "astrocommunity.pack.docker" },
  -- { import = "astrocommunity.pack.go" },
  -- { import = "astrocommunity.pack.json" },
  -- { import = "astrocommunity.pack.html-css" },
  -- { import = "astrocommunity.pack.typescript" },
  -- { import = "astrocommunity.pack.vue" },
  -- { import = "astrocommunity.pack.tailwindcss" },
  -- { import = "astrocommunity.pack.yaml" },
  -- { import = "astrocommunity.pack.python" },
  -- { import = "astrocommunity.pack.lua" },
  -- { import = "astrocommunity.pack.bash" },
  -- { import = "astrocommunity.pack.cs" },
  -- { import = "astrocommunity.pack.markdown" },
  -- motion
  { import = "astrocommunity.motion.hop-nvim" },
  -- lsp
  { import = "astrocommunity.lsp.garbage-day-nvim" },
  -- { import = "astrocommunity.lsp.lsp-lens-nvim" },
  { import = "astrocommunity.lsp.lsp-signature-nvim" },
  { import = "astrocommunity.lsp.ts-error-translator-nvim" },
  -- diagnostics
  -- { import = "astrocommunity.diagnostics.error-lens-nvim" },
  -- markdown-and-latex
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  -- indent
  -- { import = "astrocommunity.indent/indent-blankline-nvim" },
  { import = "astrocommunity.indent.mini-indentscope" },
  -- scrolling
  -- { import = "astrocommunity.scrolling/neoscroll-nvim" },
  -- dap
  { import = "astrocommunity.debugging.nvim-dap-repl-highlights" },
  { import = "astrocommunity.debugging.nvim-dap-virtual-text" },
  -- recipes
  { import = "astrocommunity.recipes.vscode-icons" },
  { import = "astrocommunity.recipes.heirline-vscode-winbar" },
  { import = "astrocommunity.recipes.heirline-mode-text-statusline" },
  --search
  -- { import = "astrocommunity.search.nvim-hlslens" },
  --project
  -- { import = "astrocommunity.project.project-nvim" },
  --terminal
  -- { import = "astrocommunity.terminal-integration.flatten-nvim" },
}
