local opts = { noremap = true, silent = true }

vim.keymap.set('n', 'x', '"_x', opts)

-- Vertical scroll and center
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- Find and center
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>x', ':bdelete!<CR>', opts) -- close buffer
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts) -- new buffer

-- Window management
vim.keymap.set('n', '<leader>v', '<C-w>v', opts) -- split window vertically
vim.keymap.set('n', '<leader>h', '<C-w>s', opts) -- split window horizontally
vim.keymap.set('n', '<leader>se', '<C-w>=', opts) -- make split windows equal width & height
vim.keymap.set('n', '<leader>xs', ':close<CR>', opts) -- close current split window

-- Window management
vim.keymap.set('n', '<leader>v', '<C-w>v', opts) -- split window vertically
vim.keymap.set('n', '<leader>h', '<C-w>s', opts) -- split window horizontally
vim.keymap.set('n', '<leader>se', '<C-w>=', opts) -- make split windows equal width & height
vim.keymap.set('n', '<leader>xs', ':close<CR>', opts) -- close current split window

-- Toggle line wrapping
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

vim.keymap.set('n', '<leader>e', '<cmd>lua MiniFiles.open()<cr>', { desc = 'Open MiniFiles browser' })

vim.keymap.set('n', '<leader>ff', '<cmd>Telescope file_files<cr>', { desc = 'Telescope Find Files' })
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { desc = 'Telescope Live Grep' })
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = 'Telescope Buffers' })
vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { desc = 'Telescope Help Tags' })

vim.keymap.set('n', '<C-k>', '<cmd> TmuxNavigateLeft<cr>', {desc = 'Move to left Pane'})
vim.keymap.set('n', '<C-j>', '<cmd> TmuxNavigateDown<cr>', {desc = 'Move to below Pane'})
vim.keymap.set('n', '<C-h>', '<cmd> TmuxNavigateUp<cr>', {desc = 'Move to above Pane'})
vim.keymap.set('n', '<C-l>', '<cmd> TmuxNavigateRight<cr>', {desc = 'Move to right Pane'})

vim.keymap.set('n', '<leader>tw', '<cmd>Twilight<cr>', {desc = 'Toggle Twilight Mode'})

vim.keymap.set('n', '<leader>mp', '<cmd>MarkdownPreviewToggle<cr>', {desc = 'Toggle Markdown Preview'})
