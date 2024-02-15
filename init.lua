require('core.mappings')
require('core.plugin_config')

vim.opt.number = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.cmd [[ language en_US ]]
vim.cmd [[ autocmd BufEnter * silent! lcd %:p:h ]]
vim.cmd [[ set guicursor=n-v-c-i:block-Cursor ]]
