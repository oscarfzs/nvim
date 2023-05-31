local map = vim.keymap.set

-- Normal-Mode Mappings
map({'n', 'v'}, ';', ':')                      -- ';' to open command mode
map('n', '<leader>relu', '<cmd>set rnu!<cr>')    -- toggle relative numbering

map('n', '<C-h>', '<C-w>h') -- for moving between windows
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

map('n', '<Tab>', '<cmd>bnext<cr>')
map('n', '<S-Tab>', '<cmd>bprev<cr>')

-- Insert-Mode Mappings
map('i', 'jk', '<Esc>') -- 'jk' to escape

map('i', '<C-h>', '<C-o>h') -- hjkl movement in insert mode
map('i', '<C-j>', '<C-o>j')
map('i', '<C-k>', '<C-o>k')
map('i', '<C-l>', '<C-o>l')
