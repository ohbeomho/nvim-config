-- Tree
vim.keymap.set("n", "<leader>e", "<cmd>Lex<cr>")

-- LSP
vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)
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

vim.keymap.set({ "n", "v" }, "*", "<cmd>keepjumps normal! mi*`i<cr>")
vim.keymap.set("n", "<leader>h", "<cmd>nohl<cr>")

-- Leap.nvim
vim.keymap.set("n", "s", "<Plug>(leap)")
vim.keymap.set("n", "S", "<Plug>(leap-from-window)")
