return {
	{
		'sainnhe/sonokai',
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.sonokai_enable_italic = true
			vim.g.sonokai_style = 'andromeda'
			vim.cmd.colorscheme('sonokai')
		end,
	},
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		opts = {},
	},
	{
		'brenoprata10/nvim-highlight-colors',
		config = function()
			vim.opt.termguicolors = true

			require('nvim-highlight-colors').setup({})
		end,
	},
	{
		'alvarosevilla95/luatab.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		opts = {},
	},
}
