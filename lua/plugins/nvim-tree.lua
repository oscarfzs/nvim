local M = {
	'nvim-tree/nvim-tree.lua',
	enabled = true,
}

M.config = function()
	require('nvim-tree').setup {
		view = {
			float = {
				enable = false,
			},
		},
	}
end

M.keys = {
	{ '<C-n>', '<cmd>NvimTreeToggle<cr>', 'n', desc="NvimTreeToggle" },
}

return M
