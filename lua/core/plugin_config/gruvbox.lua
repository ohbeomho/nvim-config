require("gruvbox").setup({
  italic = {
    comments = true,
    strings = false,
  },
  contrast = "hard",
})

vim.o.background = "dark"
vim.cmd([[ colorscheme gruvbox ]])
