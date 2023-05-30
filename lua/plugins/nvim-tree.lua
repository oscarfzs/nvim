local M = {
	'nvim-tree/nvim-tree.lua',
}

M.config = function()
	require('nvim-tree').setup {
		view = {
			float = {
				enable = true,
			},
		},
	}
end

M.keys = {
	{ '<C-n>', '<cmd>NvimTreeToggle<cr>', 'n' },
}

return M
