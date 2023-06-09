local M = {
	'nvim-telescope/telescope.nvim',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-telescope/telescope-fzf-native.nvim',
	},
}

M.config = function()
	require('telescope').setup{
		defaults = {
			mappings = {
				n = {
					['q'] = require("telescope.actions").close,
				}
			}
		},

		pickers = {
			live_grep = {
				theme = 'ivy',
			},
			colorscheme = {
				enable_preview = true,
				theme = 'dropdown',
				file_ignore_patterns = {	-- ignore those awful builtin colorschemes
					'blue',
					'darkblue',
					'default',
					'delek',
					'desert',
					'elflord',
					'evening',
					'habamax',
					'industry',
					'koehler',
					'lunaperche',
					'morning',
					'murphy',
					'pablo',
					'peachpuff',
					'quiet',
					'ron',
					'shine',
					'slate',
					'torte',
					'zellner',
				}
			}
		}
	}

	require('telescope').load_extension('fzf')
end

M.keys = {
	{ '<leader>ff', '<cmd>Telescope find_files<cr>', 'n'},
	{ '<leader>fg', '<cmd>Telescope live_grep<cr>', 'n' },
	{ '<leader>fb', '<cmd>Telescope buffers<cr>', 'n' },
	{ '<leader>fh', '<cmd>Telescope help_tags<cr>', 'n' },
	{ '<leader>fm', '<cmd>Telescope keymaps<cr>', 'n' },
	{ '<leader>th', '<cmd>Telescope colorscheme<cr>', 'n' },
}

return M
