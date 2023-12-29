require('nvim-treesitter.configs').setup {
	ensure_installed = { 'c', 'lua', 'javascript', 'typescript' },
	sync_install = false,
	auto_install = false
}
