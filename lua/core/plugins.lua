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
  use("nvim-tree/nvim-tree.lua")
  use("nvim-tree/nvim-web-devicons")
  use("nvim-treesitter/nvim-treesitter")
  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    requires = { { "nvim-lua/plenary.nvim" } },
  })

  -- Auto pairs
  use("cohama/lexima.vim")

  -- Editing surroundings
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
      vim.cmd([[ colorscheme catppuccin-macchiato ]])
    end,
  })

  -- Completions
  use("neovim/nvim-lspconfig")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-cmdline")
  use("hrsh7th/cmp-nvim-lsp-signature-help")
  use("hrsh7th/nvim-cmp")
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
      require("presence").setup({})
    end,
  })

  -- Statusline
  use({
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup({})
    end,
  })

  -- Coding time tracker
  use("wakatime/vim-wakatime")

  -- Start screen
  use({
    "goolord/alpha-nvim",
    requires = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("alpha").setup(require("alpha.themes.startify").config)
    end,
  })

  -- Indentation guide
  use({
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("ibl").setup({
        indent = {
          char = "│",
        },
      })
    end,
  })

  -- Highlighting colors
  use({
    "brenoprata10/nvim-highlight-colors",
    config = function()
      require("nvim-highlight-colors").setup()
    end,
  })

  -- Terminal
  use({
    "akinsho/toggleterm.nvim",
    tag = "*",
    config = function()
      require("toggleterm").setup({
        direction = "float",
        float_opts = {
          title_pos = "left",
        },
        shell = "pwsh",
      })
    end,
  })

  -- Commenting
  use({
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  })

  -- Neovim config signatures
  use("folke/neodev.nvim")

  -- Git
  use({
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end,
  })
  use("tpope/vim-fugitive")

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require("packer").sync()
  end
end)
