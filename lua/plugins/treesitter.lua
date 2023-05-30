local M =  {
	-- https://github.com/nvim-treesitter/nvim-treesitter
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
}

M.config = function()
	require('nvim-treesitter.configs').setup{
		highlight = { enable = true },
		ensure_installed = {
			"c",
			"go",
			"lua",
			"query",
			"rust",
			"solidity",
			"vim",
			"vimdoc",
		},
		auto_install = true,
	}
end

return M
