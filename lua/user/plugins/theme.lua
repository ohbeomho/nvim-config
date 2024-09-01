return {
  { "prichrd/netrw.nvim", dependencies = { "nvim-tree/nvim-web-devicons" }, opts = {} },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("catppuccin-macchiato")
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
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
      },
    },
  },
  {
    "alvarosevilla95/luatab.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      separator = function()
        return "│"
      end,
    },
  },
  {
    "brenoprata10/nvim-highlight-colors",
    config = function()
      vim.opt.termguicolors = true

      require("nvim-highlight-colors").setup({})
    end,
  },
}
