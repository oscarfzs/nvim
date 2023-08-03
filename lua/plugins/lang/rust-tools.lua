local M = {
	-- https://github.com/simrat39/rust-tools.nvim
	'simrat39/rust-tools.nvim',

	dependencies = {
		'neovim/nvim-lspconfig',
		'nvim-lua/plenary.nvim',
	},
	enabled = true,
	ft = {
		'rs',
	},
}

M.opts = {
	tools = {
		inlay_hints = {
			other_hints_prefix = "-> ",
		}
	}
}

return M
