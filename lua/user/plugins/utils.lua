return {
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      update_focused_file = {
        enable = true,
        update_cwd = true,
      },
      git = {
        enable = true,
        ignore = false,
        timeout = 500,
      },
      filters = {
        dotfiles = false,
      },
    },
  },
  "mateuszwieloch/automkdir.nvim",
  {
    "numToStr/Comment.nvim",
    config = true,
    lazy = false,
  },
  {
    "altermo/ultimate-autopair.nvim",
    event = { "InsertEnter", "CmdlineEnter" },
    config = true,
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
    end,
  },
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },

  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  { "wakatime/vim-wakatime", lazy = false },
  "brenoprata10/nvim-highlight-colors",
  "andweeb/presence.nvim",
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      shell = "pwsh",
      direction = "float",
      float_opts = {
        title_pos = "left",
      },
    },
  },
  { "preservim/tagbar" },
}
