-- general
lvim.log.level = "warn"
lvim.format_on_save = true
-- vim.cmd('set background=light')
-- lvim.colorscheme = "github_dimmed"
lvim.colorscheme = "catppuccin"
lvim.builtin.lualine.options.theme = "auto"
-- vim.background = "light"
-- vim.g.gruvbox_bold = 1;
-- vim.g.gruvbox_italic = 1;
-- vim.g.gruvbox_contrast_dark = "soft"
vim.opt.hidden = false
vim.opt.cmdheight = 1;
vim.opt.wrap = true
vim.opt.termguicolors = true


-- wsl2
if vim.fn.has "wsl" == 1 then
  vim.g.clipboard = {
    copy = {
      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "win32yank.exe -o --lf",
      ["*"] = "win32yank.exe -o --lf",
    },
  }
end

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = ","
-- lvim.keys.normal_mode["<leader>o>"] = ":SymbolsOutline<CR>"
lvim.keys.normal_mode["<leader>t"] = ":TodoLocList<CR>"
-- add your own keymapping

-- copilot
--vim.g.copilot_no_tab_map = true
--vim.g.copilot_assume_mapped = true
--vim.g.copilot_tab_fallback = ""
--local cmp = require "cmp"
--lvim.builtin.cmp.mapping["<C-e>"] = function(fallback)
--  cmp.mapping.abort()
--  local copilot_keys = vim.fn["copilot#Accept"]("")
--  if copilot_keys ~= "" then
--    vim.api.nvim_feedkeys(copilot_keys, "i", true)
--  else
--    fallback()
--  end
--end

-- builtin
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.alpha.dashboard.section.header.val = {
  " ████████╗ █████╗  ██████╗       ███████╗",
  " ╚══██╔══╝██╔══██╗██╔═══██╗      ██╔════╝",
  "    ██║   ███████║██║   ██║█████╗███████╗",
  "    ██║   ██╔══██║██║   ██║╚════╝╚════██║",
  "    ██║   ██║  ██║╚██████╔╝      ███████║",
  "    ╚═╝   ╚═╝  ╚═╝ ╚═════╝       ╚══════╝",
}
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.dap.active = true

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash", "c", "cpp", "javascript", "json", "lua", "python", "typescript", "tsx",
  "css", "rust", "java", "yaml", "dart"
}

-- auto install

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- gitsigns
lvim.builtin.gitsigns.opts.current_line_blame = true

-- indent blackline
lvim.builtin.indentlines.options.space_char_blankline = " "
lvim.builtin.indentlines.options.show_current_context = true
lvim.builtin.indentlines.options.show_current_context_start = true

-- copilot

--vim.g.copilot_no_tab_map = true
--vim.g.copilot_assume_mapped = true
--vim.g.copilot_tab_fallback = ""
--local cmp = require "cmp"
--
--lvim.builtin.cmp.mapping["<Tab>"] = function(fallback)
--  if cmp.visible() then
--    cmp.select_next_item()
--  else
--    local copilot_keys = vim.fn["copilot#Accept"]()
--    if copilot_keys ~= "" then
--      vim.api.nvim_feedkeys(copilot_keys, "i", true)
--    else
--      fallback()
--    end
--  end
--end

-- flutter
-- lvim.builtin.which_key.mappings["F"] = {
--   name = "+Flutter",
--   c = { "<cmd>Telescope flutter commands<cr>", "Open Flutter Commans" },
--   d = { "<cmd>FlutterDevices<cr>", "Flutter Devices" },
--   e = { "<cmd>FlutterEmulators<cr>", "Flutter Emulators" },
--   r = { "<cmd>FlutterReload<cr>", "Hot Reload App" },
--   R = { "<cmd>FlutterRestart<cr>", "Hot Restart app" },
--   q = { "<cmd>FlutterQuit<cr>", "Quit running application" },
--   v = { "<cmd>Telescope flutter fvm<cr>", "Flutter version" },
-- }


-- plugins
lvim.plugins = {
  -- { 'sainnhe/everforest' },
  -- { 'sainnhe/sonokai' },
  -- { 'joshdick/onedark.vim' },
  -- {
  --   'projekt0n/github-nvim-theme'
  -- },
  { 'easymotion/vim-easymotion' },
  -- { "github/copilot.vim" },
  { "catppuccin/nvim",          name = "catppuccin", priority = 1000 },
  {
    'Exafunction/codeium.vim',
    event = 'BufEnter'
  },
  -- {
  --   "2nthony/vitesse.nvim",
  --   dependencies = {
  --     "tjdevries/colorbuddy.nvim"
  --   },
  --   config = function()
  --     require("vitesse").setup {
  --       transparnet_background = true,
  --       comment_italics = true,
  --       transparent_background = true,
  --       transparent_float_background = true, -- aka pum(popup menu) background
  --       reverse_visual = true,
  --       dim_nc = true,
  --       cmp_cmdline_disable_search_highlight_group = true, -- disable search highlight group for cmp item
  --       -- if `transparent_float_background` false, make telescope border color same as float background
  --       telescope_border_follow_float_background = true,
  --       -- diagnostic virtual text background, like error lens
  --       diagnostic_virtual_text_background = true,
  --     }
  --   end
  -- },
  {
    "simrat39/symbols-outline.nvim",
    config = function()
      require('symbols-outline').setup {
        width = 15
      }
    end
  },
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    init = function() vim.g.mkdp_filetypes = { "markdown" } end,
    ft = { "markdown" },
  },
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup {
        signs = true,      -- show icons in the signs column
        sign_priority = 8, -- sign priority
        keywords = {
          FIX = {
            icon = " ", -- icon used for the sign, and in search results
            color = "error", -- can be a hex color, or a named color (see below)
            alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
          },
          TODO = { icon = " ", color = "info" },
          HACK = { icon = " ", color = "warning" },
          WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
          PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
          NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
          TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
        },
        gui_style = {
          fg = "NONE",                    -- The gui style to use for the fg highlight group.
          bg = "BOLD",                    -- The gui style to use for the bg highlight group.
        },
        merge_keywords = true,            -- when true, custom keywords will be merged with the defaults
        highlight = {
          multiline = true,               -- enable multine todo comments
          multiline_pattern = "^.",       -- lua pattern to match the next multiline from the start of the matched keyword
          multiline_context = 10,         -- extra lines that will be re-evaluated when changing a line
          before = "",                    -- "fg" or "bg" or empty
          keyword = "wide",               -- "fg", "bg", "wide", "wide_bg", "wide_fg" or empty. (wide and wide_bg is the same as bg, but will also highlight surrounding characters, wide_fg acts accordingly but with fg)
          after = "fg",                   -- "fg" or "bg" or empty
          pattern = [[.*<(KEYWORDS)\s*]], -- pattern or table of patterns, used for highlightng (vim regex)
          comments_only = true,           -- uses treesitter to match keywords in comments only
          max_line_len = 400,             -- ignore lines longer than this
          exclude = {},                   -- list of file types to exclude highlighting
        },
        colors = {
          error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
          warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
          info = { "DiagnosticInfo", "#2563EB" },
          hint = { "DiagnosticHint", "#10B981" },
          default = { "Identifier", "#7C3AED" },
          test = { "Identifier", "#FF00FF" }
        },
        search = {
          command = "rg",
          args = {
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
          },
          pattern = [[\b(KEYWORDS)]], -- ripgrep regex
        },
      }
    end,
  },
  {
    "karb94/neoscroll.nvim",
    event = "WinScrolled",
    config = function()
      require('neoscroll').setup({
        -- All these keys will be mapped to their corresponding default scrolling animation
        mappings = { '<C-u>', '<C-d>', '<C-b>', '<C-f>',
          '<C-y>', '<C-e>', 'zt', 'zz', 'zb' },
        hide_cursor = true,          -- Hide cursor while scrolling
        stop_eof = true,             -- Stop at <EOF> when scrolling downwards
        use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
        respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
        cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
        easing_function = nil,       -- Default easing function
        pre_hook = nil,              -- Function to run before the scrolling animation starts
        post_hook = nil,             -- Function to run after the scrolling animation ends
      })
    end
  },
  --{
  --  "akinsho/flutter-tools.nvim",
  --  dependencies = { "nvim-lua/plenary.nvim", "stevearc/dressing.nvim" },
  --  config = function()
  --    require('flutter-tools').setup {
  --      -- flutter_path = "~/development/flutter",
  --      fvm = true, -- takes priority over path, uses <workspace>/.fvm/flutter_sdk if enabled
  --      ui = {
  --        -- the border type to use for all floating windows, the same options/formats
  --        -- used for ":h nvim_open_win" e.g. "single" | "shadow" | {<table-of-eight-chars>}
  --        border = "rounded",
  --        -- This determines whether notifications are show with `vim.notify` or with the plugin's custom UI
  --        -- please note that this option is eventually going to be deprecated and users will need to
  --        -- depend on plugins like `nvim-notify` instead.
  --        notification_style = "plugin",
  --      },
  --      decorations = {
  --        statusline = {
  --          -- set to true to be able use the 'flutter_tools_decorations.app_version' in your statusline
  --          -- this will show the current version of the flutter app from the pubspec.yaml file
  --          app_version = true,
  --          -- set to true to be able use the 'flutter_tools_decorations.device' in your statusline
  --          -- this will show the currently running device if an application was started with a specific
  --          -- device
  --          device = true,
  --        },
  --      },
  --      outline = {
  --        open_cmd = "30vnew", -- command to use to open the outline buffer
  --        auto_open = false,   -- if true this will open the outline automatically when it is first populated
  --      },
  --      debugger = {
  --        enabled = true,
  --        run_via_dap = true,
  --        register_configurations = function(_)
  --          local dap = require("dap")
  --          -- dap.adapters.dart = {
  --          -- 	type = "executable",
  --          -- 	command = "node",
  --          -- 	args = { debugger_path, "flutter" },
  --          -- }
  --          dap.set_log_level("TRACE")
  --          dap.configurations.dart = {}
  --          require("dap.ext.vscode").load_launchjs()
  --        end,
  --      },
  --      dev_log = {
  --        enabled = false,
  --        -- open_cmd = "tabedit", -- command to use to open the log buffer
  --      },
  --      lsp = {
  --        color = { -- show the derived colours for dart variables
  --          enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
  --          background = false, -- highlight the background
  --          foreground = false, -- highlight the foreground
  --          virtual_text = true, -- show the highlight using virtual text
  --          virtual_text_str = "■", -- the virtual text character to highlight
  --        },
  --        settings = {
  --          showTodos = true,
  --          completeFunctionCalls = true,
  --          renameFilesWithClasses = "prompt", -- "always"
  --          enableSnippets = true,
  --          enableSdkFormatter = true,
  --        },
  --      },

  --    }
  --  end
  --},
  "ChristianChiarulli/swenv.nvim",
  "stevearc/dressing.nvim",
  "mfussenegger/nvim-dap-python",
  "nvim-neotest/neotest",
  "nvim-neotest/neotest-python",
  "mxsdev/nvim-dap-vscode-js",
  { "microsoft/vscode-js-debug", build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out" }
}

-- lsp

-- dap

-- python
local mason_path = vim.fn.glob(vim.fn.stdpath "data" .. "/mason/")
pcall(function()
  require("dap-python").setup(mason_path .. "packages/debugpy/venv/bin/python")
end)

-- go
local dap = require("dap")

dap.adapters.go = function(callback, _)
  local stdout = vim.loop.new_pipe(false)
  local handle
  local pid_or_err
  local port = 38697
  local opts = {
    stdio = { nil, stdout },
    args = { "dap", "-l", "127.0.0.1:" .. port },
    detached = true,
  }
  handle, pid_or_err = vim.loop.spawn("dlv", opts, function(code)
    stdout:close()
    handle:close()
    if code ~= 0 then
      print("dlv exited with code", code)
    end
  end)
  assert(handle, "Error running dlv: " .. tostring(pid_or_err))
  stdout:read_start(function(err, chunk)
    assert(not err, err)
    if chunk then
      vim.schedule(function()
        require("dap.repl").append(chunk)
      end)
    end
  end)
  -- Wait for delve to start
  vim.defer_fn(function()
    callback { type = "server", host = "127.0.0.1", port = port }
  end, 100)
end
-- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
dap.configurations.go = {
  {
    type = "go",
    name = "Debug",
    request = "launch",
    program = "${file}",
  },
  {
    type = "go",
    name = "Debug test", -- configuration for debugging test files
    request = "launch",
    mode = "test",
    program = "${file}",
  },
  -- works with go.mod packages and sub packages
  {
    type = "go",
    name = "Debug test (go.mod)",
    request = "launch",
    mode = "test",
    program = "./${relativeFileDirname}",
  },
}

-- js
require("dap-vscode-js").setup({
  debugger_path = (os.getenv("HOME") .. "/.local/share/lunarvim/site/pack/lazy/opt/vscode-js-debug"),
  adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost', 'node', 'firefox' },
})

for _, language in ipairs({ "typescript", "javascript" }) do
  dap.configurations[language] = {
    {
      type = "pwa-node",
      request = "launch",
      name = "Launch file",
      program = "${file}",
      cwd = "${workspaceFolder}",
    },
    {
      type = "pwa-node",
      request = "attach",
      name = "Attach",
      processId = require 'dap.utils'.pick_process,
      cwd = "${workspaceFolder}",
    },
    {
      type = "pwa-chrome",
      request = "launch",
      name = "Start Chrome with \"localhost\"",
      url = "http://localhost:5173",
      webRoot = "${workspaceFolder}",
      userDataDir = "${workspaceFolder}/.vscode/vscode-firefox-debug-userdatadir"
    }
  }
end

-- node
-- dap.adapters.node2 = {
--   type = 'executable',
--   command = 'node',
--   args = { mason_path .. 'packages/node-debug2-adapter/out/src/nodeDebug.js' },
-- }
-- dap.configurations.javascript = {
--   {
--     name = 'Launch',
--     type = 'node2',
--     request = 'launch',
--     program = '${file}',
--     cwd = vim.fn.getcwd(),
--     sourceMaps = true,
--     protocol = 'inspector',
--     console = 'integratedTerminal',
--   },
--   {
--     -- For this to work you need to make sure the node process is started with the `--inspect` flag.
--     name = 'Attach to process',
--     type = 'node2',
--     request = 'attach',
--     processId = require 'dap.utils'.pick_process,
--   },
-- }


-- formatters
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = 'prettier',
    filetypes = {
      "typescript", "javascript", "typescriptreact", "javascriptreact"
    }
  }
}

-- linter
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    command = 'eslint',
    filetypes = {
      "typescript", "javascript", "typescriptreact", "javascriptreact"
    }
  }
}

-- Flutter .arb files should be concidered as json files
-- vim.filetype.add {
--   extension = {
--     arb = 'json',
--   }
-- }
