local stylua = require("stylua-nvim")
local builtin = require("telescope.builtin")

vim.g.mapleader = " "

local function format()
  local prettierFiles =
    { "html", "css", "javascript", "typescript", "javascriptreact", "typescriptreact", "markdown", "json" }
  local filetype = vim.bo.filetype

  for _, file in ipairs(prettierFiles) do
    if file == filetype then
      vim.cmd([[ Prettier ]])
      print("Formatted - prettier")
      return
    end
  end

  if filetype == "lua" then
    stylua.format_file()
    print("Formatted - stylua")
    return
  end

  vim.lsp.buf.format()
  print("Formatted")
end

-- Tree
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")
vim.keymap.set("n", "<leader>E", "<cmd>NvimTreeFocus<cr>")

-- LSP
vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>F", format)

-- Terminal
vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm<cr>")
vim.keymap.set("t", "<esc>", "<c-\\><c-n>")

-- Tabs
vim.keymap.set("n", "<tab>n", "<cmd>tabn<cr>")
vim.keymap.set("n", "<tab>p", "<cmd>tabp<cr>")
vim.keymap.set("n", "<tab>x", "<cmd>tabc<cr>")

-- Telescope
vim.keymap.set("n", "<leader>ff", builtin.find_files)
vim.keymap.set("n", "<leader>fg", builtin.live_grep)
vim.keymap.set("n", "<leader>fb", builtin.buffers)

vim.keymap.set("n", "*", "<cmd>keepjumps normal! mi*`i<cr>")
vim.keymap.set("n", "<leader>h", "<cmd>nohl<cr>")
