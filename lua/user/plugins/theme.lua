return {
  {
    "Mofiqul/vscode.nvim",
    config = function()
      require("vscode").setup({
        italic_comments = false,
        underline_links = true,
      })
      vim.cmd.colorscheme("vscode")
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
        theme = "vscode",
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
  {
    "yamatsum/nvim-cursorline",
    opts = {
      cursorline = {
        enable = true,
        timeout = 500,
        number = false,
      },
      cursorword = {
        enable = true,
        min_length = 2,
        hl = { underline = true },
      },
    },
  },
}
