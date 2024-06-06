return {
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      update_cwd = true,
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
    "nvim-telescope/telescope.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
          },
        },
      })
      require("telescope").load_extension("fzf")
    end,
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  { "wakatime/vim-wakatime",                    lazy = false },
  "brenoprata10/nvim-highlight-colors",
  "andweeb/presence.nvim",
  {
    "anuvyklack/windows.nvim",
    dependencies = { "anuvyklack/middleclass" },
    config = true,
  },
  {
    "notjedi/nvim-rooter.lua",
    lazy = false,
    config = true,
  },
}
