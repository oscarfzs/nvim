local M = {
	-- https://github.com/numToStr/Comment.nvim
	{
		'numToStr/Comment.nvim',
		config = true,
		cond = true,
		keys = {
			{ "gcc", mode = "n" },
			{ "gc", mode = "v"},
			{ "gbc", mode = "n" },
			{ "gb", mode = "v" },
		}
	},

	-- https://github.com/AndrewRadev/splitjoin.vim
	{
		'AndrewRadev/splitjoin.vim',
		cond = true,
	},

	-- https://github.com/tpope/vim-surround
	{
		'tpope/vim-surround',
		cond = true,
	},

	-- https://github.com/kg8m/vim-simple-align
	{
		'kg8m/vim-simple-align',
		cmd = "SimpleAlign",
	},

	-- https://github.com/windwp/nvim-autopairs
	{
		'windwp/nvim-autopairs',
		config = true,
		event = "InsertEnter",
	},
}

return M
