local M = {
	'williamboman/mason-lspconfig.nvim',
}

M.config = function()
	require('mason-lspconfig').setup()

	-- Automate lsp server setup whenever mason.nvim installs an lsp
	-- see :h mason-lspconfig-automatic-server-setup 
	require('mason-lspconfig').setup_handlers {
		function (server_name)
			require('lspconfig')[server_name].setup{}
		end,
	}
end

return M
