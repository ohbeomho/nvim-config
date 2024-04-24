return {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      scope = {
        show_start = false,
      },
    },
  },
  { "folke/todo-comments.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = { "NvimTree" },
      },
    },
  },
  {
    "goolord/alpha-nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("alpha").setup(require("user.themes.theta-edit").config)
    end,
  },
}
