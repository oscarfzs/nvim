local M = {
	-- https://github.com/folke/trouble.nvim
	'folke/trouble.nvim',
}

M.keys = {
	{ '<leader>tr', '<cmd>TroubleToggle<cr>', 'n', noremap = true, desc = "Code Diagnostic Toggle" },
}

return M
