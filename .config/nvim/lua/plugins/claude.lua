return {
	"greggh/claude-code.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim", -- Required for git operation
	},
	keys = {
		{ "<leader>cc", "<cmd>ClaudeCode<cr>", desc = "ClaudeCode" },
	},
	opts = {},
}
