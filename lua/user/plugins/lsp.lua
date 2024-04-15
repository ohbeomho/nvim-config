return {
  { "williamboman/mason.nvim", lazy = false },
  "williamboman/mason-lspconfig.nvim",
  { "folke/neodev.nvim", opts = {} },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("neodev").setup({})

      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd", "tsserver", "emmet_ls" },
      })

      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            completion = {
              callSnippet = "Replace",
            },
          },
        },
      })
      lspconfig.clangd.setup({ capabilities = capabilities })
      lspconfig.tsserver.setup({ capabilities = capabilities })
      lspconfig.emmet_ls.setup({ capabilities = capabilities })
    end,
  },
}
