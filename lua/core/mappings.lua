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

vim.keymap.set("n", "<c-n>", "<cmd>NvimTreeToggle<cr>")
vim.keymap.set("n", "<s-n>", "<cmd>NvimTreeFocus<cr>")
vim.keymap.set("n", "*", "<cmd>keepjumps normal! mi*`i<cr>")
vim.keymap.set("n", "<f2>", vim.lsp.buf.rename)
vim.keymap.set("n", "<s-j>", "<cmd>tabn<cr>")
vim.keymap.set("n", "<s-k>", "<cmd>tabp<cr>")
vim.keymap.set("n", "x", "<cmd>tabc<cr>")
vim.keymap.set("n", "<leader>F", format)
vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>h", "<cmd>nohl<cr>")
