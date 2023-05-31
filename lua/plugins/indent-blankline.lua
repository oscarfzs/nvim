local M = {
	'lukas-reineke/indent-blankline.nvim',
}

M.config = function()
	require('indent_blankline').setup {
		show_current_context = true,
	}
end

return M
