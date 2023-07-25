----------------------------------------------------------------------------------------------------

-- For the 'filename'
local function change_filepath_display()
	local lualine = require('lualine')
	local config = lualine.get_config()
	local p = config.sections.lualine_c[1].path

	-- cycle through filepath display mode
	config.sections.lualine_c[1].path = p < 4 and p + 1 or 0  -- "ternary" operator hack
	                                                          -- only works if second expression is non-nil
	lualine.setup(config)
end

-- Component for displaying whether the current document is using tabs or spaces for indenting
local function indent_type()
	local ts = vim.o.tabstop
	local sw = vim.o.shiftwidth

	if sw == 0 then
		return string.format("Tabs: %d", ts)
	else
		return string.format("Spaces: %d", sw)
	end
end

local function custom_location(format_string)
	if format_string == nil then
		format_string = '%3d:%-2d'
	end

	return function()
		local line = vim.fn.line('.')
		local col = vim.fn.virtcol('.')
		return string.format(format_string, line, col)
	end
end

----------------------------------------------------------------------------------------------------

local M = {
	'nvim-lualine/lualine.nvim',
	dependencies = {
		'nvim-tree/nvim-web-devicons',
	},
}

M.config = function()
	require('lualine').setup{
		options = {
			globalstatus = true,
		},

		sections = {
			lualine_a = {'mode'},
			lualine_b = {'branch', 'diff', 'diagnostics'},
			lualine_c = {
				{
					'filename',
					path = 4,
					on_click = change_filepath_display,
				}
			},

			lualine_x = {
				-- 'location',
				custom_location("Ln: %d, Col: %d"),
				'progress',
			},

			lualine_y = {
				indent_type,
				'encoding',
			},

			lualine_z = {
				'filetype',
			}
		},
	}
end


return M
