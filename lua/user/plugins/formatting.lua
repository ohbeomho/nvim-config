return {
  { "ckipp01/stylua-nvim", lazy = false },
  {
    "MunifTanjim/prettier.nvim",
    opts = {
      bin = "prettierd",
      filetypes = {
        "css",
        "html",
        "javascript",
        "javascriptreact",
        "json",
        "markdown",
        "typescript",
        "typescriptreact",
      },
    },
  },
}
