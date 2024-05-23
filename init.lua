vim.g.mapleader = " "

require("core.lazy")
require("core.mappings")
require("core.snippets")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true
vim.opt.guicursor = "n-v-c:block,i:ver25"
vim.opt.number = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.ignorecase = true

vim.cmd("language en_US.utf8")
vim.cmd("colorscheme catppuccin-macchiato")

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.ejs",
  callback = function()
    vim.bo.filetype = "html"
  end,
})

if vim.g.neovide then
  vim.o.guifont = "D2CodingLigature Nerd Font Mono:h15"
end
