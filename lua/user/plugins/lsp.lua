return {
  { "williamboman/mason.nvim", lazy = false },
  "williamboman/mason-lspconfig.nvim",
  { "folke/neodev.nvim",       config = true },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("neodev").setup({})

      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd", "ts_ls", "emmet_language_server", "cssls", "julials" },
        automatic_installation = true,
      })
      require("mason-lspconfig").setup_handlers({
        function(server_name)
          local capabilities = require("cmp_nvim_lsp").default_capabilities()

          if server_name == "clang" then
            require("lspconfig")[server_name].setup({
              capabilities = capabilities,
              on_attach = function(client)
                client.server_capabilities.documentFormattingProvider = false
                client.server_capabilities.documentRangeFormattingProvider = false
              end,
              cmd = {
                "clangd",
                "--offset-encoding=utf-16",
              },
            })
          else
            require("lspconfig")[server_name].setup({ capabilities = capabilities })
          end
        end,
      })
    end,
  },
}
