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
				ensure_installed = { 'lua_ls', 'clangd', 'ts_ls', 'emmet_language_server', 'cssls', 'pylsp', 'gopls' },
				automatic_enable = true,
			})
		end,
	},
	{
		'nvimdev/lspsaga.nvim',
		config = function()
			require('lspsaga').setup({
				ui = {
					code_action = '',
				},
			})
		end,
		dependencies = {
			'nvim-treesitter/nvim-treesitter', -- optional
			'nvim-tree/nvim-web-devicons', -- optional
		},
		event = 'LspAttach',
	},
	{
		'hedyhli/outline.nvim',
		config = function()
			-- Example mapping to toggle outline
			vim.keymap.set('n', '<leader>o', '<cmd>Outline<CR>', { desc = 'Toggle Outline' })

			require('outline').setup({
				-- Your setup opts here (leave empty to use defaults)
			})
		end,
	},
}
