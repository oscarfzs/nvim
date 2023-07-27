-- lsp related tools
local M = {
	-- These three plugins must be loaded in the following order:
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
		priority = 100,
	},

	-- https://github.com/williamboman/mason-lspconfig.nvim
	{
		'williamboman/mason-lspconfig.nvim',
		lazy = false,
		priority = 99,
	},

	-- https://github.com/neovim/nvim-lspconfig
	{
		'neovim/nvim-lspconfig',
		lazy = false,
		priority = 98,
	},

	-- https://github.com/folke/trouble.nvim
	{
		'folke/trouble.nvim',
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
}

return M
