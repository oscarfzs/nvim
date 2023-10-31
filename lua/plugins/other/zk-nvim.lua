local M = {
	"mickael-menu/zk-nvim",
	requires = { "nvim-telescope/telescope.nvim" },
	config = function()
		require('zk').setup{}
	end,
	opts = {
		picker = "telescope",
	}
}

return M
