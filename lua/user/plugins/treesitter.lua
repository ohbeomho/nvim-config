return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter.install').compilers = { 'clang' }
      require('nvim-treesitter.configs').setup({
        ensure_installed = { 'c', 'cpp', 'lua', 'javascript', 'typescript', 'html', 'css', 'vimdoc', 'python' },
        sync_install = true,
        auto_install = true,
        highlight = {
          enable = true,
        },
        ignore_install = {},
        modules = {},
        indent = {
          enable = true,
        },
      })
    end,
  },
  {
    'Wansmer/treesj',
    keys = { '<space>m', '<space>j', '<space>s' },
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = true,
  },
  {
    'yorickpeterse/nvim-tree-pairs',
    config = true,
  },
}
