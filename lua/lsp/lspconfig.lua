local M = {
  -- https://github.com/neovim/nvim-lspconfig
	'neovim/nvim-lspconfig',
}

M.config = function()
	local lspconfig = require('lspconfig')
	local lsp_defaults = lspconfig.util.default_config

	-- set capabilities here instead of having to do so every time we do setup for a language
	lsp_defaults.capabilities = vim.tbl_deep_extend(
		'force',
		lsp_defaults.capabilities,
		require('cmp_nvim_lsp').default_capabilities()
	)
end

M.keys = {
	{ '<leader>e', vim.diagnostic.open_float, 'n' },

	{ 'gD', vim.lsp.buf.declaration, 'n' },
	{ 'gd', vim.lsp.buf.definition, 'n' },
	{ 'gr', vim.lsp.buf.references, 'n' },
	{ 'K', vim.lsp.buf.hover },

	{ '<leader>rn', vim.lsp.buf.rename, 'n' },
}

return M
