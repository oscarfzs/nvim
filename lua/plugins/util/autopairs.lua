local M = {
	-- https://github.com/windwp/nvim-autopairs
	"windwp/nvim-autopairs",
	enabled = true,
	event = "InsertEnter",
}

M.config = function ()
	local Rule = require('nvim-autopairs.rule')

	require('nvim-autopairs').setup {}
	require('nvim-autopairs').add_rule(
		Rule('*', '*', "markdown")
	)
end



return M
