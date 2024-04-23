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
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.install").compilers = { "clang" }
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "c", "lua", "javascript", "typescript", "html", "css", "vimdoc" },
        sync_install = true,
        auto_install = true,
        highlight = {
          enable = true,
        },
        ignore_install = {},
        modules = {},
      })
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({})
      require("telescope").load_extension("fzf")
    end,
  },
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  { "wakatime/vim-wakatime",                    lazy = false },
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
  {
    "Wansmer/treesj",
    keys = { "<space>m", "<space>j", "<space>s" },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = true,
  },
  {
    "yorickpeterse/nvim-tree-pairs",
    config = true,
  },
  { "preservim/tagbar" },
}
