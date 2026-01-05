return {
	"m-gail/escape.nvim",
	keys = {
		{
			"<leader>qs",
			function()
				require("escape").escape()
			end,
			desc = "Escape string",
		},
	},
	opts = {},
}
