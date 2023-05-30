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

	-- The following plugins are for code completion
	{
		'hrsh7th/nvim-cmp',
	},

	{
		'hrsh7th/cmp-cmdline',
	},

	{
		'hrsh7th/cmp-path',
	},

	{
		'hrsh7th/cmp-buffer',
	},

	{
		'hrsh7th/cmp-nvim-lsp',
	},

	{
		'L3MON4D3/LuaSnip',
	},

	{
		'saadparwaiz1/cmp_luasnip',
	},

}

return M
