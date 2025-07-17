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
		priority = 49,

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
		'jiaoshijie/undotree',
		dependencies = 'nvim-lua/plenary.nvim',
		config = true,
		keys = { -- load the plugin only when using it's keybinding:
			{ '<leader>u', "<cmd>lua require('undotree').toggle()<cr>" },
		},
	},
	{
		'samiulsami/fFtT-highlights.nvim',
		config = function()
			---@module "fFtT-highlights"
			---@type fFtT_highlights.opts
			require('fFtT-highlights'):setup({
				---See below for default configuration options
			})
		end,
	},
}
