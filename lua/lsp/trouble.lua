local M = {
	'folke/trouble.nvim',
}

M.keys = {
	{ '<leader>xx', '<cmd>TroubleToggle<cr>', 'n', noremap = true, desc = "Code Diagnostic Toggle" },
}

return M
