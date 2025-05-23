return {
	{ 'williamboman/mason.nvim', lazy = false },
	'williamboman/mason-lspconfig.nvim',
	{ 'folke/lazydev.nvim', ft = 'lua', opts = {} },
	{
		'neovim/nvim-lspconfig',
		dependencies = { 'saghen/blink.cmp' },
		config = function()
			require('mason').setup()
			require('mason-lspconfig').setup({
				ensure_installed = { 'lua_ls', 'clangd', 'ts_ls', 'emmet_language_server', 'cssls', 'pylsp' },
				automatic_enable = true,
			})
		end,
	},
}
