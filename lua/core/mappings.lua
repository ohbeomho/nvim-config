-- Oil
local oil = require('oil')
vim.keymap.set('n', '<leader>e', oil.open_float)

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

-- Tabs
vim.keymap.set('n', '<tab>n', '<cmd>tabn<cr>')
vim.keymap.set('n', '<tab>p', '<cmd>tabp<cr>')
vim.keymap.set('n', '<tab>x', '<cmd>tabc<cr>')

-- Undotree
vim.keymap.set('n', '<leader>u', require('undotree').toggle)

-- Lspsaga
vim.keymap.set('n', 'gd', '<cmd>Lspsaga goto_definition<cr>')
vim.keymap.set('n', ']d', '<cmd>Lspsaga diagnostic_jump_next<cr>')
vim.keymap.set('n', '[d', '<cmd>Lspsaga diagnostic_jump_prev<cr>')
vim.keymap.set('n', '<f2>', '<cmd>Lspsaga rename<cr>')
vim.keymap.set('n', '<leader>c', '<cmd>Lspsaga code_action<cr>')
vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<cr>')

-- Others
vim.keymap.set('n', '*', '<cmd>keepjumps normal! mi*`i<cr>')
vim.keymap.set('n', '<leader>h', '<cmd>nohl<cr>')
