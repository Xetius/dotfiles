vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR><Esc>", { desc = "Clear search highlight and escape" })

-- vim.keymap.set("n", "x", '"_x')
--
-- -- Find and center
-- vim.keymap.set("n", "n", "nzzzv")
-- vim.keymap.set("n", "N", "Nzzzv")
--
-- -- Buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { desc = "Next Buffer" })
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { desc = "Previous Buffer" })
vim.keymap.set("n", "<leader>x", ":bdelete!<CR>", { desc = "Delete Buffer" }) -- close buffer
vim.keymap.set("n", "<leader>b", "<cmd>enew<CR>", { desc = "Create New Buffer" }) -- new buffer

-- Window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split Window Vertically" }) -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split Window Horizontally" }) -- split window horizontally
vim.keymap.set("n", "<leader>sx", ":close<CR>", { desc = "Close Current Split" }) -- close current split window

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

-- Vim-Tmux-Navigator
vim.keymap.set("n", "<C-k>", "<cmd> TmuxNavigateLeft<cr>", { desc = "Move to left Pane" })
vim.keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<cr>", { desc = "Move to below Pane" })
vim.keymap.set("n", "<C-h>", "<cmd> TmuxNavigateUp<cr>", { desc = "Move to above Pane" })
vim.keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<cr>", { desc = "Move to right Pane" })
--
-- vim.keymap.set("n", "<leader>tw", "<cmd>Twilight<cr>", { desc = "Toggle Twilight Mode" })
--
-- vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", { desc = "Toggle Markdown Preview" })
--

-- Telescope
local telescope = require("telescope.builtin")
vim.keymap.set("n", "<leader>fp", telescope.builtin, { desc = "Telescope pickers" })
vim.keymap.set("n", "<leader>ff", telescope.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", telescope.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", telescope.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", telescope.help_tags, { desc = "Telescope help tags" })
vim.keymap.set("n", "<leader>fk", telescope.keymaps, { desc = "Telescope keymaps" })

-- Oil
vim.keymap.set("n", "<leader>e", "<cmd>Oil<cr>", { desc = "Open Oil" })

-- Harpoon2
local harpoon = require("harpoon")
vim.keymap.set("n", "<leader>ha", function()
	harpoon:list():add()
end, { desc = "Add to Harpoon" })
vim.keymap.set("n", "<leader>hh", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Toggle Harpoon" })
vim.keymap.set("n", "<A-1>", function()
	harpoon:list():select(1)
end, { desc = "Harpoon file 1" })
vim.keymap.set("n", "<A-2>", function()
	harpoon:list():select(2)
end, { desc = "Harpoon file 2" })
vim.keymap.set("n", "<A-3>", function()
	harpoon:list():select(3)
end, { desc = "Harpoon file 3" })
vim.keymap.set("n", "<A-4>", function()
	harpoon:list():select(4)
end, { desc = "Harpoon file 4" })
vim.keymap.set("n", "<A-5>", function()
	harpoon:list():select(5)
end, { desc = "Harpoon file 5" })
-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<leader>hp", function()
	harpoon:list():prev()
end, { desc = "Previous Harpoon file" })
vim.keymap.set("n", "<leader>hn", function()
	harpoon:list():next()
end, { desc = "Next Harpoon file" })

-- Atone keymap (undo tree)
vim.keymap.set("n", "<leader>uu", "<cmd>Atone toggle<cr>", { desc = "Toggle Atone undo tree" })

-- Trouble
vim.keymap.set("n", "<leader>tt", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })
vim.keymap.set(
	"n",
	"<leader>tT",
	"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
	{ desc = "Buffer Diagnostics (Trouble)" }
)
vim.keymap.set("n", "<leader>ts", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = "Symbols (Trouble)" })
vim.keymap.set(
	"n",
	"<leader>tl",
	"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
	{ desc = "LSP Definitions / references / ... (Trouble)" }
)
vim.keymap.set("n", "<leader>tL", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List (Trouble)" })
vim.keymap.set("n", "<leader>tQ", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)" })

-- ClaudeCode
vim.keymap.set("n", "<leader>ac", "<cmd>ClaudeCode<cr>", { desc = "Toggle Claude" })
vim.keymap.set("n", "<leader>af", "<cmd>ClaudeCodeFocus<cr>", { desc = "Focus Claude" })
vim.keymap.set("n", "<leader>ar", "<cmd>ClaudeCode --resume<cr>", { desc = "Resume Claude" })
vim.keymap.set("n", "<leader>aC", "<cmd>ClaudeCode --continue<cr>", { desc = "Continue Claude" })
vim.keymap.set("n", "<leader>am", "<cmd>ClaudeCodeSelectModel<cr>", { desc = "Select Claude model" })
vim.keymap.set("n", "<leader>ab", "<cmd>ClaudeCodeAdd %<cr>", { desc = "Add current buffer" })
vim.keymap.set("n", "<leader>as", "<cmd>ClaudeCodeSend<cr>", { desc = "Send to Claude" })
vim.keymap.set("n", "<leader>aa", "<cmd>ClaudeCodeDiffAccept<cr>", { desc = "Accept diff" })
vim.keymap.set("n", "<leader>ad", "<cmd>ClaudeCodeDiffDeny<cr>", { desc = "Deny diff" })
