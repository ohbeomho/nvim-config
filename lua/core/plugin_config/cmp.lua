local cmp = require('cmp')
local luasnip = require('luasnip')

cmp.setup({
  snippet = {
    expand = function (args)
      require('luasnip').lsp_expand(args.body)
    end
  },
  mapping = {
    ['<tab>'] = cmp.mapping.confirm({ select = true }),
    ['<c-e>'] = cmp.mapping.abort(),
    ['<c-space>'] = cmp.mapping.complete(),
    ['<s-j>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
        -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable() 
        -- that way you will only jump inside the snippet region
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<s-k>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' }
  }, {
    { name = 'buffer' }
  })
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup { capabilities = capabilities }
lspconfig.clangd.setup { capabilities = capabilities }
lspconfig.tsserver.setup { capabilities = capabilities }
