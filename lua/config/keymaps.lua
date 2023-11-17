-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- map({ "n", "v" }, ";", ":")

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

-- Tab Related Keymaps
map("n", "<leader><tab>n", "<cmd> tabnew <cr>")
