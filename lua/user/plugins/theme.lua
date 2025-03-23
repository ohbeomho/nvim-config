return {
	{
		'folke/todo-comments.nvim',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = true,
	},
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		opts = {
			options = {
				theme = 'auto',
				component_separators = { left = '', right = '' },
				section_separators = { left = '', right = '' },
			},
		},
	},
	{
		'alvarosevilla95/luatab.nvim',
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
		'folke/noice.nvim',
		event = 'VeryLazy',
		opts = {
			-- add any options here
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			'MunifTanjim/nui.nvim',
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			'rcarriga/nvim-notify',
		},
	},
}
