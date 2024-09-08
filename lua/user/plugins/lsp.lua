return {
  { "williamboman/mason.nvim", lazy = false },
  "williamboman/mason-lspconfig.nvim",
  { "folke/neodev.nvim", config = true },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("neodev").setup({})

      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd", "tsserver", "emmet_language_server" },
      })
      require("mason-lspconfig").setup_handlers({
        function(server_name)
          if server_name == "tsserver" then
            server_name = "ts_ls"
          end

          local capabilities = require("cmp_nvim_lsp").default_capabilities()

          if server_name == "clang" then
            require("lspconfig")[server_name].setup({
              on_attach = function(client)
                client.server_capabilities.documentFormattingProvider = false
                client.server_capabilities.documentRangeFormattingProvider = false
              end,
              cmd = {
                "clangd",
                "--offset-encoding=utf-16",
              },
            })
            return
          end

          require("lspconfig")[server_name].setup({ capabilities = capabilities })
        end,
      })
    end,
  },
}
