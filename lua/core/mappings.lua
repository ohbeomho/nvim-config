local stylua = require("stylua-nvim")

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

vim.keymap.set("n", "<leader>h", "<cmd>nohl<cr>")
vim.keymap.set("n", "<c-b>", "<cmd>NvimTreeToggle<cr>")
vim.keymap.set("n", "*", "<cmd>keepjumps normal! mi*`i<cr>")
vim.keymap.set("n", "<leader>f", format)
vim.keymap.set("n", "<leader>k", function()
  vim.lsp.buf.hover()
end)
vim.keymap.set("n", "<s-j>", "<cmd>tabnext<cr>")
vim.keymap.set("n", "<s-k>", "<cmd>tabprevious<cr>")
vim.keymap.set("n", "<f2>", vim.lsp.buf.rename)
vim.keymap.set("n", "<tab>n", "<cmd>BufferNext<cr>")
vim.keymap.set("n", "<tab>p", "<cmd>BufferPrevious<cr>")
vim.keymap.set("n", "<tab>x", "<cmd>BufferClose<cr>")
