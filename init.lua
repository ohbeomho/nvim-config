require("core.plugin")
require("core.mappings")
require("core.snippets")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

vim.opt.number = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.ignorecase = true

vim.cmd("language en_US")
vim.cmd("colorscheme catppuccin-macchiato")

vim.api.nvim_create_autocmd("BufEnter", {
  command = "silent! lcd %:p:h",
})
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.ejs",
  command = "set filetype=html",
})
vim.api.nvim_create_autocmd("WinNew", {
  command = "wincmd L",
})

if vim.g.neovide then
  vim.o.guifont = "JetBrainsMono Nerd Font Mono:h13"
  vim.g.neovide_padding_top = 12
end

-- Set root dir
local root_names = { ".git", "src" }
local root_cache = {}

local set_root = function()
  local path = vim.api.nvim_buf_get_name(0)
  if path == "" then
    return
  end
  path = vim.fs.dirname(path)

  local root = root_cache[path]
  if root == nil then
    local root_file = vim.fs.find(root_names, { path = path, upward = true })[1]
    if root_file == nil then
      return
    end
    root = vim.fs.dirname(root_file)
    root_cache[path] = root
  end

  vim.fn.chdir(root)
end

local root_augroup = vim.api.nvim_create_augroup("MyAutoRoot", {})
vim.api.nvim_create_autocmd("BufEnter", { group = root_augroup, callback = set_root })
