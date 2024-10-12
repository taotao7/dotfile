-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
  -- { import = "astrocommunity.diagnostics.error-lens-nvim" },
  -- { import = "astrocommunity.diagnostics.lsp_lines-nvim" },
  -- { import = "astrocommunity.diagnostics.trouble-nvim" },
  -- { import = "astrocommunity.completion.coq_nvim" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.motion.hop-nvim" },
  { import = "astrocommunity.lsp.ts-error-translator-nvim" },
  { import = "astrocommunity.editing-support.copilotchat-nvim" },
  -- { import = "astrocommunity.editing-support.copilotchat-nvim" },
  -- { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  { import = "astrocommunity.indent.mini-indentscope" },
  -- { import = "astrocommunity.debugging.nvim-dap-repl-highlights" },
  -- { import = "astrocommunity.debugging.nvim-dap-virtual-text" },
  -- { import = "astrocommunity.recipes.heirline-nvchad-statusline" },
  { import = "astrocommunity.icon.mini-icons" },
  { import = "astrocommunity.recipes.heirline-vscode-winbar" },
  { import = "astrocommunity.utility.noice-nvim" },
}
