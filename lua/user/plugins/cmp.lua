return {
	{
		'saghen/blink.cmp',
		-- optional: provides snippets for the snippet source
		dependencies = 'rafamadriz/friendly-snippets',

		-- use a release tag to download pre-built binaries
		version = 'v0.*',
		-- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
		-- build = 'cargo build --release',
		-- If you use nix, you can build from source using latest nightly rust with:
		-- build = 'nix run .#build-plugin',

		---@module 'blink.cmp'
		---@type blink.cmp.Config
		opts = {
			-- 'default' for mappings similar to built-in completion
			-- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
			-- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
			-- see the "default configuration" section below for full documentation on how to define
			-- your own keymap.
			keymap = {
				preset = 'super-tab',
			},

			appearance = {
				-- Sets the fallback highlight groups to nvim-cmp's highlight groups
				-- Useful for when your theme doesn't support blink.cmp
				-- will be removed in a future release
				use_nvim_cmp_as_default = true,
				-- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
				-- Adjusts spacing to ensure icons are aligned
				nerd_font_variant = 'mono',
			},

			-- default list of enabled providers defined so that you can extend it
			-- elsewhere in your config, without redefining it, via `opts_extend`
			sources = {
				default = { 'snippets', 'lsp', 'path', 'buffer', 'lazydev' },
				providers = {
					lazydev = {
						name = 'LazyDev',
						module = 'lazydev.integrations.blink',
						-- make lazydev completions top priority (see `:h blink.cmp`)
						score_offset = 100,
					},
				},
				-- optionally disable cmdline completions
				-- cmdline = {},
			},

			completion = {
				list = {
					selection = {
						preselect = true,
						auto_insert = true,
					},
				},
				accept = {
					auto_brackets = {
						enabled = false,
					},
				},
				keyword = { range = 'prefix' },
				documentation = { auto_show = true },
			},

			-- experimental signature help support
			signature = {
				enabled = true,
			},

			cmdline = {
				completion = {
					menu = {
						auto_show = true,
					},
					ghost_text = {
						enabled = false,
					},
				},

				keymap = {
					preset = 'super-tab',
				},
			},
		},
		-- allows extending the providers array elsewhere in your config
		-- without having to redefine it
		opts_extend = { 'sources.default' },
	},
}
