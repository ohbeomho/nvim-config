require('nvim-treesitter.install').compilers = { "clang" }
require('nvim-treesitter.configs').setup {
	ensure_installed = { 'c', 'lua', 'javascript', 'typescript', 'go' },
	sync_install = false,
	highlight = {
		enable = true
	}
}
