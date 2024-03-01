local stylua = require("stylua-nvim")

vim.g.mapleader = " "

local function format()
  local prettierFiles = { "html", "css", "javascript", "typescript", "javascriptreact", "typescriptreact", "markdown" }
  local filetype = vim.bo.filetype

  for _, file in ipairs(prettierFiles) do
    if file == filetype then
      vim.cmd([[ Prettier ]])
      return
    end
  end

  if filetype == "lua" then
    stylua.format_file()
    return
  end

  vim.lsp.buf.format()
end

vim.keymap.set("n", "<leader>h", "<cmd>nohlsearch<cr>")
vim.keymap.set("n", "<c-n>", "<cmd>NvimTreeToggle<cr>")
vim.keymap.set("n", "*", "<cmd>keepjumps normal! mi*`i<cr>")
vim.keymap.set("n", "<leader>f", format)
vim.keymap.set("n", "<leader>k", function()
  vim.lsp.buf.hover()
end)
vim.keymap.set("n", "<s-j>", "<cmd>tabnext<cr>")
vim.keymap.set("n", "<s-k>", "<cmd>tabprevious<cr>")
