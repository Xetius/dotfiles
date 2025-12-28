return {
	"xetius/gruvbox.nvim",
	lazy = false,
	priority = 1000,
	config = true,
	config = function()
		require("gruvbox").setup({
			transparent_mode = true,
		})
		vim.cmd("colorscheme gruvbox")
	end
}
