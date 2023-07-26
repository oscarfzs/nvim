local M = {
	-- https://github.com/akinsho/toggleterm.nvim
   'akinsho/toggleterm.nvim',
   version = '*',
}

M.opts = {
   open_mapping = [[<C-t>]],
	direction = 'float',
}

M.keys = {
   { "<C-t>" },
}

return M
