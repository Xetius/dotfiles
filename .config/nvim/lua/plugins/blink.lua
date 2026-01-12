return {
	"saghen/blink.cmp",
	-- optional: provides snippets for the snippet source
	dependencies = { "L3MON4D3/LuaSnip", version = "v2.*" },

	-- use a release tag to download pre-built binaries
	version = "1.8.0",

	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = { preset = "default" },

		appearance = {
			-- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
			-- Adjusts spacing to ensure icons are aligned
			nerd_font_variant = "mono",
		},

		-- (Default) Only show the documentation popup when manually triggered
		completion = {
			menu = { border = "single" },
			documentation = { window = { border = "single" } },
		},
		signature = { enabled = true, window = { border = "single" } },
		snippets = { preset = "luasnip" },
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},

		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	opts_extend = { "sources.default" },
}
