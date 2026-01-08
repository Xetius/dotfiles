return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"mason-org/mason.nvim",
		"mason-org/mason-lspconfig.nvim",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/nvim-cmp",

		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
	},

	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"terraformls",
				"gh_actions_ls",
				"bashls",
				"dockerls",
				"helm_ls",
				"jsonls",
				"lua_ls",
				"marksman",
				"sqlls",
				"stylua",
				"terraformls",
				"yamlls",
			},
		})
	end,
}
