vim.keymap.set("n", "x", '"_x')

-- Find and center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { desc = "Next Buffer" })
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { desc = "Previous Buffer" })
vim.keymap.set("n", "<leader>x", ":bdelete!<CR>", { desc = "Delete Buffer" }) -- close buffer
vim.keymap.set("n", "<leader>b", "<cmd>enew<CR>", { desc = "Create New Buffer" }) -- new buffer

-- Window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split Window Vertically" }) -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split Window Horizontally" }) -- split window horizontally
vim.keymap.set("n", "<leader>xs", ":close<CR>", { desc = "Close Current Split" }) -- close current split window

-- Toggle line wrapping
vim.keymap.set("n", "<leader>lw", "<cmd>set wrap!<CR>", { desc = "Toggle Line Wrap" })

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", { desc = "Unindent selection" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent selection" })

-- Move lines up/down
vim.keymap.set("n", "<A-j>", ":m .+1<cr>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", ":m .-2<cr>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-k>", ":m '>-2<cr>gv=gv", { desc = "Move selection up" })

vim.keymap.set("n", "<C-k>", "<cmd> TmuxNavigateLeft<cr>", { desc = "Move to left Pane" })
vim.keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<cr>", { desc = "Move to below Pane" })
vim.keymap.set("n", "<C-h>", "<cmd> TmuxNavigateUp<cr>", { desc = "Move to above Pane" })
vim.keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<cr>", { desc = "Move to right Pane" })

vim.keymap.set("n", "<leader>tw", "<cmd>Twilight<cr>", { desc = "Toggle Twilight Mode" })

vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", { desc = "Toggle Markdown Preview" })

vim.keymap.set("n", "<leader>e", "<cmd>Oil --float<CR>", { desc = "Open Parent Directory in Oil" })
vim.keymap.set("n", "gl", function()
	vim.diagnostic.open_float()
end, { desc = "Open Diagnostics in Float" })

vim.keymap.set("n", "<leader>gs", "<cmd>lua require('gitsigns').stage_hunk()<cr>", { desc = "Stage Hunk" })
vim.keymap.set("n", "<leader>gu", "<cmd>lua require('gitsigns').undo_stage_hunk()<cr>", { desc = "Undo Stage Hunk" })
vim.keymap.set("n", "<leader>gr", "<cmd>lua require('gitsigns').reset_hunk()<cr>", { desc = "Reset Hunk" })
vim.keymap.set("n", "<leader>gp", "<cmd>lua require('gitsigns').preview_hunk()<cr>", { desc = "Preview Hunk" })
vim.keymap.set("n", "<leader>gb", "<cmd>lua require('gitsigns').blame_hunk()<cr>", { desc = "Blame Hunk" })
vim.keymap.set("n", "<leader>gd", "<cmd>lua require('gitsigns').diffthis('~1')<cr>", { desc = "Diff Hunk" })
vim.keymap.set("n", "<leader>gN", "<cmd>lua require('gitsigns').nav_hunk('prev')<cr>", { desc = "Previous Hunk" })
vim.keymap.set("n", "<leader>gn", "<cmd>lua require('gitsigns').nav_hunk('next')<cr>", { desc = "Next Hunk" })

vim.keymap.set("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<cr>")
vim.keymap.set("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<cr>")
vim.keymap.set("n", "<C-w>d", "<cmd>lua vim.diagnostic.open_float()<cr>")
vim.keymap.set("n", "<C-w><C-d>", "<cmd>lua vim.diagnostic.open_float()<cr>")

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
