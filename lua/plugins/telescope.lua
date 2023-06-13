local M = {
	'nvim-telescope/telescope.nvim',
	dependencies = {
		'nvim-lua/plenary.nvim',
	},
	config = function()
		require('telescope').setup{
			defaults = {
				mappings = {
					n = {
						['q'] = require("telescope.actions").close,
					}
				}
			},
		}
		require('telescope').load_extension('fzf')
	end,
}

M.keys = {
	{ '<leader>ff', '<cmd>Telescope find_files<cr>', 'n'},
	{ '<leader>fg', '<cmd>Telescope live_grep<cr>', 'n' },
	{ '<leader>fb', '<cmd>Telescope buffers<cr>', 'n' },
	{ '<leader>fh', '<cmd>Telescope help_tags<cr>', 'n' },
	{ '<leader>fm', '<cmd>Telescope keymaps<cr>', 'n' },
}

return M
