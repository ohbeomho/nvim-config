return {
  {
    "shaunsingh/nord.nvim",
    config = function()
      vim.cmd([[colorscheme nord]])
    end,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = true,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        theme = "nord",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
      },
    },
  },
  {
    "alvarosevilla95/luatab.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },
  {
    "brenoprata10/nvim-highlight-colors",
    config = function()
      vim.opt.termguicolors = true

      require("nvim-highlight-colors").setup({})
    end,
  },
}
