-- Oil
vim.keymap.set("n", "<leader>e", function()
  require("oil").open_float()
end)

-- LSP
vim.keymap.set("n", "<f2>", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>c", vim.lsp.buf.code_action)

-- Tabs
vim.keymap.set("n", "<tab>n", "<cmd>tabn<cr>")
vim.keymap.set("n", "<tab>p", "<cmd>tabp<cr>")
vim.keymap.set("n", "<tab>x", "<cmd>tabc<cr>")

local fzflua = require("fzf-lua")

-- fzf-lua
vim.keymap.set("n", "<leader>ff", fzflua.files)
vim.keymap.set("n", "<leader>fg", fzflua.live_grep)
vim.keymap.set("n", "<leader>fb", fzflua.buffers)

-- Windows
vim.keymap.set("n", "<C-w>z", "<cmd>WindowsMaximize<cr>")
vim.keymap.set("n", "<C-w>|", "<cmd>WindowsMaximizeVertically<cr>")
vim.keymap.set("n", "<C-w>_", "<cmd>WindowsMaximizeHorizontally<cr>")
vim.keymap.set("n", "<C-w>=", "<cmd>WindowsEqualize<cr>")

-- Marks
vim.keymap.set("n", "<leader>dm", "<cmd>delm! | delm A-Z0-9<cr>")

-- Others
vim.keymap.set("n", "*", "<cmd>keepjumps normal! mi*`i<cr>")
vim.keymap.set("n", "<leader>h", "<cmd>nohl<cr>")

function Highlight_selection()
  local vstart = vim.fn.getpos("'<")
  local vend = vim.fn.getpos("'>")
  local line_start = vstart[2]
  local line_end = vend[2]

  if line_start ~= line_end then
    return
  end

  local line = vim.fn.getline(".")
  local selection = string.sub(line, vstart[3], vend[3])
  vim.cmd("/" .. selection)
  vim.api.nvim_feedkeys("N", "n", true)
end

vim.keymap.set("x", "*", ":lua Highlight_selection()<cr>")
vim.keymap.set("i", "jj", "<esc>")
