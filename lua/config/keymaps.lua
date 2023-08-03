vim.g.mapleader = ','

local map = vim.keymap.set

-- Normal-Mode Mappings
map({'n', 'v'}, ';', ':')                      -- ';' to open command mode
map('n', '<leader>relu', '<cmd>set rnu!<cr>')    -- toggle relative numbering

map('n', '<C-h>', '<C-w>h') -- for moving between windows
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

map('n', '[t', ':tabprevious<cr>')
map('n', ']t', ':tabnext<cr>')

map('n', '<Tab>', '<cmd>bnext<cr>') -- navigating buffers
map('n', '<S-Tab>', '<cmd>bprev<cr>')
map('n', '[b', ':bprevious<cr>')
map('n', ']b', ':bnext<cr>')

-- Insert-Mode Mappings
map({ 'i' }, 'jk', '<Esc>') -- 'jk' to escape
map({ 'i' }, 'kj', '<Esc>') -- 'jk' to escape
map({ 'i' },'jj', '<Esc>') -- 'jj' to escape

map('i', '<C-h>', '<Left>') -- hjkl movement in insert mode
map('i', '<C-j>', '<Down>')
map('i', '<C-k>', '<Up>')
map('i', '<C-l>', '<Right>')


