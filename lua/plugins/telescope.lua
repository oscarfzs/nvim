local M = {
	'nvim-telescope/telescope.nvim',
	dependencies = {
		'nvim-lua/plenary.nvim',
	},
	config = function()
		require('telescope').setup{}
		require('telescope').load_extension('fzf')
	end,
	keys = {
	},
}

M.keys = {
	{ '<leader>ff', '<cmd>Telescope find_files<cr>', 'n' },
	{ '<leader>fg', '<cmd>Telescope live_grep<cr>', 'n' },
	{ '<leader>fb', '<cmd>Telescope buffers<cr>', 'n' },
	{ '<leader>fh', '<cmd>Telescope help_tags<cr>', 'n' },
}

return M
