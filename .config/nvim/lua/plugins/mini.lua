return {
	{ "nvim-mini/mini.icons", version = false, opts = { silent = true } },
	{ "nvim-mini/mini.basics", version = false, opts = { silent = true } },
	{ "nvim-mini/mini.statusline", version = false, opts = { silent = true } },
	{ "nvim-mini/mini.files", version = false, opts = { silent = true } },
	{ "nvim-mini/mini.ai", version = false, opts = { silent = true } },
	{ "nvim-mini/mini.comment", version = false, opts = { silent = true } },
	{ "nvim-mini/mini.pairs", version = false, opts = { silent = true } },
	{ "nvim-mini/mini.surround", version = false, opts = { silent = true } },
	{
		"nvim-mini/mini.clue",
		version = false,
		config = function()
			local miniclue = require("mini.clue")
			miniclue.setup({
				triggers = {
					-- Leader triggers
					{ mode = "n", keys = "<Leader>" },
					{ mode = "x", keys = "<Leader>" },

					-- Built-in completion
					{ mode = "i", keys = "<C-x>" },

					-- `g` key
					{ mode = "n", keys = "g" },
					{ mode = "x", keys = "g" },

					-- Marks
					{ mode = "n", keys = "'" },
					{ mode = "n", keys = "`" },
					{ mode = "x", keys = "'" },
					{ mode = "x", keys = "`" },

					-- Registers
					{ mode = "n", keys = '"' },
					{ mode = "x", keys = '"' },
					{ mode = "i", keys = "<C-r>" },
					{ mode = "c", keys = "<C-r>" },

					-- Window commands
					{ mode = "n", keys = "<C-w>" },

					-- `z` key
					{ mode = "n", keys = "z" },
					{ mode = "x", keys = "z" },
				},

				clues = {
					-- Enhance this by adding descriptions for <Leader> mapping groups
					miniclue.gen_clues.builtin_completion(),
					miniclue.gen_clues.g(),
					miniclue.gen_clues.marks(),
					miniclue.gen_clues.registers(),
					miniclue.gen_clues.windows(),
					miniclue.gen_clues.z(),
				},
			})
		end,
	},
	{ "nvim-mini/mini.diff", version = false, opts = { silent = true } },
	{ "nvim-mini/mini.extra", version = false, opts = { silent = true } },
	{ "nvim-mini/mini.pick", version = false, opts = { silent = true } },
	{
		"nvim-mini/mini-git",
		version = false,
		config = function()
			require("mini.git").setup()
		end,
	},
	{ "nvim-mini/mini.animate", version = false, opts = { silent = true } },
	{ "nvim-mini/mini.indentscope", version = false, opts = { silent = true } },
	{ "nvim-mini/mini.notify", version = false, opts = { silent = true } },
	{ "nvim-mini/mini.splitjoin", version = false, opts = { silent = true } },
	{ "nvim-mini/mini.starter", version = false, opts = { silent = true } },
}
