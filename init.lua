vim.g.mapleader = " "

require("core.lazy")
require("core.mappings")
require("core.snippets")

-- Enable persistent undo
vim.o.undofile = true

-- Disable mouse
vim.opt.mouse = ""
-- Block cursor when Normal, Visual, Command
-- Line cursor when Insert
vim.opt.guicursor = "n-v-c:block,i:ver25"
-- Line numbers (Relative)
vim.opt.number = true
vim.opt.relativenumber = true
-- Indent
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
-- Case insensitive when searching
vim.opt.ignorecase = true
vim.opt.termguicolors = true

vim.cmd("language en_US.utf8")

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

if vim.g.neovide then
  require("user.neovide")
end

-- Set file type to html when ejs file open
-- to use html highlighting
autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.ejs",
  callback = function()
    vim.bo.filetype = "html"
  end,
})
