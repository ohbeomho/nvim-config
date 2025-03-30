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
				automatic_installation = true,
			})
			require('mason-lspconfig').setup_handlers({
				function(server_name)
					local capabilities = require('blink.cmp').get_lsp_capabilities()
					require('lspconfig')[server_name].setup({ capabilities = capabilities })
				end,
				['clangd'] = function()
					local capabilities = require('blink.cmp').get_lsp_capabilities()

					require('lspconfig').clangd.setup({
						capabilities = capabilities,
						on_attach = function(client)
							client.server_capabilities.documentFormattingProvider = false
							client.server_capabilities.documentRangeFormattingProvider = false
						end,
						cmd = {
							'clangd',
							'--offset-encoding=utf-16',
						},
					})
				end,
			})
		end,
	},
}
