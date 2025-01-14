vim.g.mapleader = " "

require("core.lazy")
require("core.mappings")
require("user.neovide")

-- Enable persistent undo
vim.o.undofile = true

-- Disable mouse
vim.opt.mouse = ""
-- Always block cursor
vim.opt.guicursor = "n-v-c:block,i:ver20"
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
-- Always show tabline
vim.opt.showtabline = 2

-- popui
vim.ui.select = require("popui.ui-overrider")
vim.ui.input = require("popui.input-overrider")

vim.cmd("language en_US.utf8")

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Set file type to html when ejs file open
-- to use html highlighting
autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.ejs",
  callback = function()
    vim.bo.filetype = "html"
  end,
})
