local M = {
	'nvim-lualine/lualine.nvim',
	dependencies = {
		'nvim-tree/nvim-web-devicons',
	},
}

M.config = function()
	require('lualine').setup{
		sections = {
			lualine_a = {'mode'},
			lualine_b = {'branch', 'diff', 'diagnostics'},
			lualine_c = {
				{
					'filename',
					path = 4,
					on_click = update_filepath_display,
				}
			},

			lualine_x = {
				'location',
				'progress',
			},
			lualine_y = {
				'encoding',
			},
			lualine_z = {
				'filetype',
			}
		},
	}
end

function update_filepath_display()
	local lualine = require('lualine')
	local config = lualine.get_config()
	local p = config.sections.lualine_c[1].path

	-- cycle through filepath display mode
	config.sections.lualine_c[1].path = p < 4 and p + 1 or 0  -- "ternary" operator hack
	                                                          -- only works if second expression is non-nil
	lualine.setup(config)
end

return M
