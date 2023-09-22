-- https://github.com/Pocco81/auto-save.nvim
-- Automatically save your changes in NeoVim
local M = {
	"okuuva/auto-save.nvim",
	lazy = false,
	keys = {
		{ "<leader>ts", ":ASToggle<cr>", desc = "Toggle auto-save"}
	},
}

M.config = function()
	require('auto-save').setup{
		enabled = false,
	}
end

return M
