-- All things LSP and Autocomplete
vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
	{ src = "https://github.com/saghen/blink.cmp", version = vim.version.range("v1.0") },
	{ src = "https://github.com/rafamadriz/friendly-snippets" },
	{ src = "https://github.com/L3MON4D3/LuaSnip", version = vim.version.range("v2.0") },
	{ src = "https://github.com/github/copilot.vim" },
	{ src = "https://github.com/fang2hou/blink-copilot" },
})

vim.diagnostic.config({})

local capabilities = vim.tbl_deep_extend("force", {}, vim.lsp.protocol.make_client_capabilities())
capabilities = require("blink.cmp").get_lsp_capabilities(capabilities)

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"rust_analyzer",
		"gopls",
		"yamlls",
		"terraformls",
		"bashls",
		"copilot",
	},
})

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = {
					"vim",
					"require",
				},
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
			telemetry = {
				enable = false,
			},
			sources = {
				default = { "lsp", "snippets", "path", "buffer", "copilot" },
				providers = {},
			},
		},
	},
})

require("luasnip.loaders.from_vscode").lazy_load()
require("blink.cmp").setup({
	signature = { enabled = true },
	completion = {
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 500,
		},
		ghost_text = {
			enabled = true,
			show_with_selection = true,
			show_without_selection = false,
			show_with_menu = true,
			show_without_menu = true,
		},
	},
	sources = {
		default = { "lsp", "path", "snippets", "buffer", "copilot" },
		providers = {
			copilot = {
				name = "copilot",
				module = "blink-copilot",
				async = false,
			},
		},
	},
})
