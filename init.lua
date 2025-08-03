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
vim.wo.relativenumber = true
-- Disable line break
vim.opt.wrap = false
-- Indent
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = false
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
-- Case insensitive when searching
vim.opt.ignorecase = true
vim.opt.termguicolors = true
-- Always show tabline
vim.o.showtabline = 2

vim.diagnostic.config({ virtual_lines = true })

vim.cmd('language en_US.utf8')

vim.api.nvim_create_user_command("Format", function ()
	vim.lsp.buf.format()
end, { nargs = 0, desc = "LSP Format" })

local autocmd = vim.api.nvim_create_autocmd

-- Set file type to html when ejs file open
-- to use html highlighting
autocmd({ 'BufNewFile', 'BufRead' }, {
	pattern = '*.ejs',
	callback = function()
		vim.bo.filetype = 'html'
	end,
})

-- Shift numbered registers up (1 becomes 2, 2 becomes 3, etc.)
-- Thanks to u/PieceAdventurous on reddit!
local function yank_shift()
	for i = 9, 1, -1 do
		vim.fn.setreg(tostring(i), vim.fn.getreg(tostring(i - 1)))
	end
end

autocmd('TextYankPost', {
	callback = function()
		local event = vim.v.event
		if event.operator == 'y' then
			yank_shift()
		end
	end,
})
