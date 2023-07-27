local M = {
	-- https://github.com/mhartington/formatter.nvim
	-- A format runner for Neovim.
	'mhartington/formatter.nvim',
}

M.config = function()
	require('formatter').setup{
		filetype = {
			lua = {
				 require("formatter.filetypes.lua").stylua,
			},
			rust = {
				require("formatter.filetypes.rust").rustfmt,
			}
		}
	}
end

M.keys = {
	{ "<leader>F", ":Format<cr>", 'n', desc="Format Buffer"}
}

return M
