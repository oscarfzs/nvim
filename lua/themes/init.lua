return {
	-- https://github.com/rebelot/kanagawa.nvim
	{
		'rebelot/kanagawa.nvim',
		enabled = true,
		config = function()
			vim.cmd("colorscheme kanagawa")
		end
	}
}
