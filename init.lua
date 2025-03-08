vim.g.mapleader = ' '
vim.g.maplocalleader = ','

require('core.lazy')
require('core.mappings')
require('user.neovide')
require('user.terminal')

-- Enable persistent undo
vim.o.undofile = true

-- Disable mouse
vim.opt.mouse = ''
vim.opt.guicursor = 'n-v-c:block,i:ver20'
-- Line numbers
vim.opt.number = true
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

vim.cmd('language en_US.utf8')
vim.cmd('colorscheme retrobox')

local autocmd = vim.api.nvim_create_autocmd

-- Set file type to html when ejs file open
-- to use html highlighting
autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = '*.ejs',
  callback = function()
    vim.bo.filetype = 'html'
  end,
})
