require("nvim-tree").setup({
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
})
