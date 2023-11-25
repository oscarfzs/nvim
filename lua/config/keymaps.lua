-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- map({ "n" }, ";", ":")

map("n", "<C-h>", "<C-w>h") -- navigating windows in normal mode
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

map("n", "<Tab>", "<cmd>bnext<cr>") -- navigating buffers
map("n", "<S-Tab>", "<cmd>bprev<cr>")

map({ "i" }, "jk", "<Esc>") -- alternate escape shortcuts
map({ "i" }, "kj", "<Esc>")
map({ "i" }, "jj", "<Esc>")

map("i", "<C-h>", "<Left>") -- hjkl movement in insert mode
map("i", "<C-j>", "<Down>")
map("i", "<C-k>", "<Up>")
map("i", "<C-l>", "<Right>")

-- Shortcut for deleting marks
-- vim.keymap.set('n', '<CR>', '@="m`o<C-V><Esc>``"<CR>')
-- vim.keymap.set('n', '<S-CR>', '@="m`O<C-V><Esc>``"<CR>')

map('n', '<leader>dm', ':delmarks ')
map('n', '<leader>dM', ':delmarks!<cr> ')
