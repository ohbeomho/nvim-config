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
    'ibhagwan/fzf-lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local fzflua = require('fzf-lua')
      fzflua.setup({
        files = {
          no_ignore = true,
        },
        diagnostics = {
          previewer = 'bat',
        },
        previewers = {
          bat = {
            cmd = 'bat',
            args = '--color=always --style=numbers,changes',
          },
        },
      })
    end,
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
    'ggandor/leap.nvim',
    dependencies = { 'tpope/vim-repeat' },
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
}
