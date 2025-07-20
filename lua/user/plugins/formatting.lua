return {
	{
		'stevearc/conform.nvim',
		config = function()
			require('conform').setup({
				formatters_by_ft = {
					lua = { 'stylua' },
					python = { 'black' },
					javascript = { 'prettierd' },
					typescript = { 'prettierd' },
					html = { 'prettierd' },
					css = { 'prettierd' },
					cpp = { 'clang-format' },
					c = { 'clang-format' },
				},
				formatters = {
					clang_format = {
						args = { "-style='{IndentWidth: 4}'" },
					},
				},
				format_on_save = {
					timeout_ms = 1000,
					lsp_format = 'fallback',
				},
			})
		end,
	},
}
