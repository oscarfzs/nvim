local M = {
	-- https://github.com/neovim/nvim-lspconfig
	'neovim/nvim-lspconfig',
}

M.keys = {
	{ '<leader>e', vim.diagnostic.open_float, 'n' },
}

M.config = function()
	local lspconfig = require('lspconfig')

	lspconfig.lua_ls.setup{
		settings = {
			Lua = {
				diagnostics = {
					globals = { 'vim' },
				},
			},
		},
	}
end

return M
