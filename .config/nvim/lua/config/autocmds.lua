vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("lsp", {}),
	callback = function(event)
		local bufmap = function(mode, rhs, lhs)
			vim.keymap.set(mode, rhs, lhs, { buffer = event.buf })
		end

		bufmap("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>")
		bufmap("n", "grr", "<cmd>lua vim.lsp.buf.references()<cr>")
		bufmap("n", "gri", "<cmd>lua vim.lsp.buf.implementation()<cr>")
		bufmap("n", "grn", "<cmd>lua vim.lsp.buf.renme()<cr>")
		bufmap("n", "gra", "<cmd>lua vim.lsp.buf.code_action()<cr>")
		bufmap("n", "gO", "<cmd>lua vim.lsp.buf.document_symbol()<cr>")
		bufmap({ "i", "s" }, "gq", "<cmd>lua vim.lsp.buf.signature_help()<cr>")

		bufmap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>")
		bufmap("n", "grt", "<cmd>lua vim.lsp.buf.type_definition()<cr>")
		bufmap("n", "grd", "<cmd>lua vim.lsp.buf.declaration()<cr>")
		bufmap({ "n", "x" }, "gq", "<cmd>lua vim.lsp.buf.format(async = true)<cr>")
	end,
 })
