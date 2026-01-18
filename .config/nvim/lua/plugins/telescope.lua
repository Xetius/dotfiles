local hooks = function(ev)
	local name, kind = ev.data.spec.name, ev.data.kind
	if name == "telescope-fzf-native" and (kind == "install" or kind == "update") then
		vim.notify("telescope-fzf-native was installed or updated. Running make")
		local r = vim.system(
			{
				"cmake",
				"-S.",
				"-Bbuild",
				"-DCMAKE_BUILD_TYPE=Release",
				"&&",
				"cmake",
				"--build",
				"build",
				"--config",
				"Release",
				"--target",
				"install",
			},
			{ cwd = ev.data.path }
		):wait()
		if r.code == 0 then
			vim.notify("telescope-fzf-native build stage complete successfully")
		else
			vim.notify("telescope-fzf-native build stage failed")
			vim.notify(r.stdout)
		end
	end
end

-- If hooks need to run on install, run this before `vim.pack.add()`
vim.api.nvim_create_autocmd("PackChanged", { callback = hooks })

vim.pack.add({
	"https://github.com/Xetius/telescope.nvim",
	"https://github.com/Xetius/telescope-fzf-native.nvim",
})

require("telescope").setup({
	extensions = {
		fzf = {
			fuzzy = true, -- false will only do exact matching
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "smart_case", -- or "ignore_case" or "respect_case"
			-- the default case_mode is "smart_case"
		},
	},
})
