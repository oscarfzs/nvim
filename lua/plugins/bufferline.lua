local M = {
	-- https://github.com/akinsho/bufferline.nvim
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
}

M.config = function()
	require('bufferline').setup{
		options = {
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					highlight = "Directory",
				},
			},
		},
	}
end

return M
