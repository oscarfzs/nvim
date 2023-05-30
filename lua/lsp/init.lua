local M = {
	-- plugins must be loaded in the following order:
	-- 1. mason.nvim
	-- 2. mason-lspconfig.nvim
	-- 3. nvim-lspconfig
	-- 
	-- Make sure to properly set the priorities of the above packages
	--
	-- https://github.com/williamboman/mason.nvim
	{
		'williamboman/mason.nvim',
		lazy = false,
		priority = 10,
	},

	-- https://github.com/williamboman/mason-lspconfig.nvim
	{
		'williamboman/mason-lspconfig.nvim',
		lazy = false,
		priority = 9,
	},

	-- https://github.com/neovim/nvim-lspconfig
	{
		'neovim/nvim-lspconfig',
		lazy = false,
		priority = 8,
	},
}

return M
