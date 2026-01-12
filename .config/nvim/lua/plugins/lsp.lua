return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"mason-org/mason.nvim",
		"mason-org/mason-lspconfig.nvim",
		"saghen/blink.cmp",
	},

	config = function(_, opts)
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
