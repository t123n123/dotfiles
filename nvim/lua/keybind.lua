local map = vim.keymap.set

map('n', '<Esc>', '<cmd>nohlsearch<cr>', { desc = 'Close search hightlist' }) 
map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

map('n', '<C-left>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-right>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-down>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-up>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

map("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
map("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
map("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
map("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

map("n", "<C-S-left>", "<C-w>H", { desc = "Move window to the left" })
map("n", "<C-S-right>", "<C-w>L", { desc = "Move window to the right" })
map("n", "<C-S-down>", "<C-w>J", { desc = "Move window to the lower" })
map("n", "<C-S-up>", "<C-w>K", { desc = "Move window to the upper" })

map("n", "<M-n>", "<cmd>cnext<cr>", { desc = "Move to next quickfix item" })
map("n", "<M-m>", "<cmd>cprev<cr>", { desc = "Move to prev quickfix item" })
map('n', '<leader>q', "<cmd>copen<cr>", { desc = 'Open diagnostic quickfix list'})
