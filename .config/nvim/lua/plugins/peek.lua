local hooks = function(ev)
	local name, kind = ev.data.spec.name, ev.data.kind
	if name == "peek" and (kind == "install" or kind == "update") then
		vim.notify("peek was installed or updated. Running make")
		local r = vim.system({ "deno", "task", "--quiet", "build:fast" }, { cwd = ev.data.path }):wait()
		if r.code == 0 then
			vim.notify("peek build stage complete successfully")
		else
			vim.notify("peek build stage failed")
			vim.notify(r.stdout)
		end
	end
end

vim.api.nvim_create_autocmd("PackChanged", { callback = hooks })

vim.pack.add({ "https://github.com/toppair/peek.nvim" })

require("peek").setup({})

vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
