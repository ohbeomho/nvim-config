vim.g.mapleader = " "

require("core.lazy")
require("core.mappings")
require("core.snippets")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

vim.opt.guicursor = "n-v-c:block,i:hor20"

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

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

autocmd("WinNew", { command = "wincmd L" })
autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.ejs",
  callback = function()
    vim.bo.filetype = "html"
  end,
})

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

local root_augroup = augroup("MyAutoRoot", {})
autocmd("BufEnter", { group = root_augroup, callback = set_root })
