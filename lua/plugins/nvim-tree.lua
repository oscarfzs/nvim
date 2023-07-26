local M = {
	'nvim-tree/nvim-tree.lua',
	enabled = true,
}

M.config = function()
	require('nvim-tree').setup {
		disable_netrw = true,
		sync_root_with_cwd = true,
		view = {
			float = {
				enable = true,
			},
		},
	}
end

M.keys = {
	{ '<C-n>', '<cmd>NvimTreeToggle<cr>', 'n', desc="NvimTreeToggle" },
}

return M
