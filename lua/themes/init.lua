return {
	-- https://github.com/rebelot/kanagawa.nvim
	{
		'rebelot/kanagawa.nvim',
		enabled = true,
		priority = 1000,
		config = function()
			vim.cmd("colorscheme kanagawa")
		end
	},

	-- https://github.com/folke/tokyonight.nvim
	{
		"folke/tokyonight.nvim",
		enabled = true,
		priority = 1000,
		config = function()
			vim.cmd("colorscheme tokyonight")
		end
	},
	{
		"ellisonleao/gruvbox.nvim",
		enabled = true,
		priority= 1000,
		config = function()
			vim.cmd("colorscheme tokyonight")
		end
	},
}
