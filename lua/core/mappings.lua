-- Oil
local oil = require('oil')
vim.keymap.set('n', '<leader>e', oil.open_float)

-- LSP
vim.keymap.set('n', '<f2>', vim.lsp.buf.rename)
vim.keymap.set('n', '<leader>lk', vim.lsp.buf.hover)
vim.keymap.set('n', '<leader>lc', vim.lsp.buf.code_action)

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', function()
	builtin.find_files({ no_ignore = true })
end)
vim.keymap.set('n', '<leader>fg', builtin.live_grep)
vim.keymap.set('n', '<leader>fb', builtin.buffers)
vim.keymap.set('n', '<leader>fr', builtin.resume)

vim.keymap.set('n', '<leader>gs', builtin.git_status)
vim.keymap.set('n', '<leader>gc', builtin.git_commits)
vim.keymap.set('n', '<leader>gb', builtin.git_branches)

-- Windows
vim.keymap.set('n', '<C-w>z', '<cmd>WindowsMaximize<cr>')
vim.keymap.set('n', '<C-w>|', '<cmd>WindowsMaximizeVertically<cr>')
vim.keymap.set('n', '<C-w>_', '<cmd>WindowsMaximizeHorizontally<cr>')
vim.keymap.set('n', '<C-w>=', '<cmd>WindowsEqualize<cr>')

-- Marks
vim.keymap.set('n', '<leader>dm', '<cmd>delm! | delm A-Z0-9<cr>')

-- Leap
vim.keymap.set({ 'n', 'x' }, 's', '<Plug>(leap)')

-- Buffers
vim.keymap.set('n', 'bn', '<cmd>bn<cr>')
vim.keymap.set('n', 'bp', '<cmd>bp<cr>')

-- Others
vim.keymap.set('n', '*', '<cmd>keepjumps normal! mi*`i<cr>')
vim.keymap.set('n', '<leader>h', '<cmd>nohl<cr>')

function Highlight_selection()
	local vstart = vim.fn.getpos("'<")
	local vend = vim.fn.getpos("'>")
	local line_start = vstart[2]
	local line_end = vend[2]

	if line_start ~= line_end then
		return
	end

	local line = vim.fn.getline('.')
	local selection = string.sub(line, vstart[3], vend[3])
	selection = selection:gsub('([' .. string.gsub('^$()%.[]*+-?', '(.)', '%%1') .. '])', '\\%1')
	vim.cmd('/' .. selection)
	vim.api.nvim_feedkeys('N', 'n', true)
end

vim.keymap.set('x', '*', '<cmd>lua Highlight_selection()<cr>')
