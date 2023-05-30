-- https://github.com/nvim-neo-tree/neo-tree.nvim

local M = {
	'nvim-neo-tree/neo-tree.nvim',

	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},

	keys = {
		{ '<C-n>', '<Cmd>Neotree toggle<CR>', 'n' },
	},

	-- https://github.com/nvim-neo-tree/neo-tree.nvim#quickstart
	opts = {
		close_if_last_window = true,
	}
}

return M
