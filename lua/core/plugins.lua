local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")

  -- Tree view
  use("nvim-tree/nvim-tree.lua")

  -- Icons
  use("nvim-tree/nvim-web-devicons")

  -- Syntax highlighting
  use("nvim-treesitter/nvim-treesitter")

  -- File finder
  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    requires = { { "nvim-lua/plenary.nvim" } },
  })

  -- Auto pairs
  use("cohama/lexima.vim")

  use({
    "kylechui/nvim-surround",
    tag = "*",
    config = function()
      require("nvim-surround").setup({})
    end,
  })

  -- Theme
  use({
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      vim.cmd([[ colorscheme catppuccin-frappe ]])
    end,
  })

  -- Auto completion
  use("neovim/nvim-lspconfig")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-cmdline")
  use("hrsh7th/nvim-cmp")

  -- Snippets
  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")
  use("rafamadriz/friendly-snippets")

  -- Formatting
  use("jose-elias-alvarez/null-ls.nvim")
  use("MunifTanjim/prettier.nvim")
  use("ckipp01/stylua-nvim")

  -- Discord presence
  use({
    "andweeb/presence.nvim",
    config = function()
      require("presence").setup()
    end,
  })

  -- Statusline
  use({
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup()
    end,
  })

  -- Coding time tracker
  use("wakatime/vim-wakatime")

  -- CSS color highlighting
  use({
    "brenoprata10/nvim-highlight-colors",
    config = function()
      require("nvim-highlight-colors").setup({})
    end,
  })

  -- Indention guide
  use({
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("ibl").setup()
    end,
  })

  -- Start page
  use({
    "goolord/alpha-nvim",
    requires = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("alpha").setup(require("alpha.themes.startify").config)
    end,
  })

  -- Git
  use("airblade/vim-gitgutter")
  use("tpope/vim-fugitive")

  -- Multi cursor
  use("mg979/vim-visual-multi")

  -- Comment highlighting
  use({
    "folke/todo-comments.nvim",
    requires = { { "nvim-lua/plenary.nvim" } },
    config = function()
      require("todo-comments").setup()
    end,
  })

  -- Tabs
  use("lewis6991/gitsigns.nvim")
  use("romgrk/barbar.nvim")

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require("packer").sync()
  end
end)
