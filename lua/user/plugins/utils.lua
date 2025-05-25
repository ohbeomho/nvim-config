return {
	'mateuszwieloch/automkdir.nvim',
	{
		'kylechui/nvim-surround',
		version = '*',
		event = 'VeryLazy',
		config = function()
			require('nvim-surround').setup()
		end,
	},
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.8',
		dependencies = {
			'nvim-lua/plenary.nvim',
			'BurntSushi/ripgrep',
		},
		opts = {
			pickers = {
				colorscheme = {
					enable_preview = true,
				},
			},
		},
	},
	{ 'wakatime/vim-wakatime', lazy = false },
	{
		'anuvyklack/windows.nvim',
		dependencies = { 'anuvyklack/middleclass', 'anuvyklack/animation.nvim' },
		config = true,
	},
	{
		'notjedi/nvim-rooter.lua',
		lazy = false,
		config = true,
	},
	{
		'karb94/neoscroll.nvim',
		opts = {
			duration_multiplier = 0.5,
		},
	},
	{
		'stevearc/oil.nvim',
		---@module 'oil'
		---@type oil.SetupOpts
		opts = {
			view_options = {
				show_hidden = true,
				case_insensitive = true,
			},
		},
		-- Optional dependencies
		-- dependencies = { { "echasnovski/mini.icons", opts = {} } },
		dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if prefer nvim-web-devicons
	},
	{
		'altermo/ultimate-autopair.nvim',
		event = { 'InsertEnter', 'CmdlineEnter' },
		branch = 'v0.6', --recommended as each new version will have breaking changes
		opts = {
			--Config goes here
		},
	},
	{
		'OXY2DEV/markview.nvim',
		lazy = false, -- Recommended
		-- ft = "markdown" -- If you decide to lazy-load anyway

		dependencies = {
			-- You will not need this if you installed the
			-- parsers manually
			-- Or if the parsers are in your $RUNTIMEPATH
			'nvim-treesitter/nvim-treesitter',
			'nvim-tree/nvim-web-devicons',
		},
		opts = {
			preview = {
				modes = { 'n', 'no', 'c' },
				hybrid_modes = { 'n' },
			},
		},
	},
	{
		'MagicDuck/grug-far.nvim',
		config = function()
			require('grug-far').setup({
				startInInsertMode = false,
				windowCreationCommand = 'tab split',
			})
		end,
	},
	{
		'folke/trouble.nvim',
		opts = {},
		cmd = 'Trouble',
		keys = {
			{
				'<leader>xx',
				'<cmd>Trouble diagnostics toggle filter.buf=0 focus=true<cr>',
				desc = 'Buffer Diagnostics (Trouble)',
			},
			{
				'<leader>xX',
				'<cmd>Trouble diagnostics toggle focus=true<cr>',
				desc = 'Diagnostics (Trouble)',
			},
			{
				'<leader>xl',
				'<cmd>Trouble lsp toggle win.position=left focus=true<cr>',
				desc = 'LSP Definitions / References / ... (Trouble)',
			},
			{
				'<leader>xs',
				'<cmd>Trouble symbols toggle win.position=left focus=true<cr>',
				desc = 'Symbols (Trouble)',
			},
		},
	},
	{
		'm4xshen/hardtime.nvim',
		lazy = false,
		dependencies = { 'MunifTanjim/nui.nvim' },
		opts = {},
	},
}
