vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>h', '<cmd>nohlsearch<cr>')
vim.keymap.set('n', '<c-n>', '<cmd>NvimTreeToggle<cr>')
vim.keymap.set('n', '*', '<cmd>keepjumps normal! mi*`i<cr>')
vim.keymap.set('n', '<leader>f', '<cmd>Prettier<cr>')
vim.keymap.set('n', '<leader>k', function () vim.lsp.buf.hover() end)
