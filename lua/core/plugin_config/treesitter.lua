require("nvim-treesitter.install").compilers = { "clang" }
require("nvim-treesitter.configs").setup({
  ensure_installed = { "c", "lua", "javascript", "typescript", "html", "css", "vimdoc" },
  sync_install = false,
  highlight = {
    enable = true,
  },
})
