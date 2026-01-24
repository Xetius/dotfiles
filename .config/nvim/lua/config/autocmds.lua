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
		local bufmap = function(mode, rhs, lhs, opts)
			opts = opts or {}
			opts.buffer = event.buf
			vim.keymap.set(mode, rhs, lhs, opts)
		end

		bufmap("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", { desc = "LSP Hover Documentation" })
		bufmap("n", "grr", "<cmd>lua vim.lsp.buf.references()<cr>", { desc = "LSP References" })
		bufmap("n", "gri", "<cmd>lua vim.lsp.buf.implementation()<cr>", { desc = "LSP Implementation" })
		bufmap("n", "grn", "<cmd>lua vim.lsp.buf.renme()<cr>", { desc = "LSP Rename" })
		bufmap("n", "gra", "<cmd>lua vim.lsp.buf.code_action()<cr>", { desc = "LSP Code Action" })
		bufmap("n", "gO", "<cmd>lua vim.lsp.buf.document_symbol()<cr>", { desc = "LSP Document Symbols" })
		bufmap({ "i", "s" }, "gq", "<cmd>lua vim.lsp.buf.signature_help()<cr>", { desc = "LSP Signature Help" })

		bufmap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", { desc = "LSP Go to Definition" })
		bufmap("n", "grt", "<cmd>lua vim.lsp.buf.type_definition()<cr>", { desc = "LSP Go to Type Definition" })
		bufmap("n", "grd", "<cmd>lua vim.lsp.buf.declaration()<cr>", { desc = "LSP Go to Declaration" })
		bufmap({ "n", "x" }, "gq", "<cmd>lua vim.lsp.buf.format(async = true)<cr>", { desc = "LSP Format Document" })
	end,
})  

vim.api.nvim_create_autocmd('User', {
    pattern = 'MasonToolsStartingInstall',
    callback = function()
      vim.schedule(function()
        print 'mason-tool-installer is starting'
      end)
    end,
  }
)
