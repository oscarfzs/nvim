local M = {
	'williamboman/mason.nvim',
	build = ':MasonUpdate',
}

M.config = function()
	require('mason').setup()
end

M.keys = {
	{ '<leader>M', '<cmd>Mason<cr>', 'n' },
}

return M
