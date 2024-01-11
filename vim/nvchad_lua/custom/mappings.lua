---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>do"] = { ":lua require'dap'.step_over()<CR>", "step over" },
    ["<leader>di"] = { ":lua require'dap'.step_into()<CR>", "step into" },
    ["<leader>du"] = { ":lua require'dap'.step_out()<CR>", "step out" },
    ["<leader>db"] = { ":lua require'dap'.toggle_breakpoint()<CR>", "toggle breakpoint" },
    ["<leader>dc"] = { ":lua require'dap'.continue()<CR>", "continue" },
    ["<leader>dr"] = { ":lua require'dap'.repl.open()<CR>", "open repl" },
    ["<leader>dq"] = { ":lua require'dap'.disconnect()<CR>", "disconnect" },
    ["<leader>dQ"] = { ":lua require'dap'.close()<CR>", "close" },
    ["<leader>dp"] = { ":lua require'dap'.pause.toggle()<CR>", "pause" },
    ["<leader>dP"] = { ":lua require'dap'.run_last()<CR>", "run last" },
    ["<leader>ds"] = { ":lua require'dap.ui.variables'.scopes()<CR>", "scopes" },
    ["<leader>dt"] = { ":lua require'dap.ui.variables'.hover()<CR>", "hover" },
    ["<leader>dT"] = { ":lua require'dap.ui.widgets'.centered_float(require'dap.ui.widgets'.hover())<CR>", "hover" },
    ["<leader>dv"] = { ":lua require'dap.ui.variables'.visual_hover()<CR>", "visual hover" },
    ["<leader>de"] = { ":lua require'dapui'.eval()<CR>", "eval" },
    ["<leader>dE"] = { ":lua require'dapui'.eval(require'dapui'.eval()).open()<CR>", "eval" },
    ["<leader>df"] = { ":lua require'dapui'.float_element(require'dapui'.eval()).open()<CR>", "eval" },
    ["<leader>dF"] = { ":lua require'dapui'.float_element(require'dapui'.eval()).close()<CR>", "eval" },
    ["<leader>d?"] = { ":lua require'dap.ui.variables'.scopes()<CR>", "scopes" },
    ["<leader>dI"] = { ":lua require'dap.ui.variables'.hover({focusable=false})<CR>", "hover" },
    ["<leader>dh"] = { ":lua require'dapui'.toggle()<CR>", "toggle ui" },
    ["<leader>dl"] = { ":lua require'dapui'.toggle()<CR>", "toggle ui" },
    ["<leader>gg"] = { "<CMD>LazyGit<CR>", "  LazyGit" },
    ["<leader><leader>w"] = { "<CMD> HopWord <CR>", "󰸱 Hint all words" },
    ["<leader><leader>t"] = { "<CMD> HopNodes <CR>", " Hint Tree" },
    ["<leader><leader>c"] = { "<CMD> HopLineStart<CR>", "󰕭 Hint Columns" },
    ["<leader><leader>l"] = { "<CMD> HopWordCurrentLine<CR>", "󰗉 Hint Line" },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
