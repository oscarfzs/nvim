local M = {
	'williamboman/mason.nvim',
	build = ':MasonUpdate',
	config = true,
}

M.keys = {
	{ '<leader>M', '<cmd>Mason<cr>', 'n' },
}

return M
