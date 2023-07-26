local M = {
	-- https://github.com/echasnovski/mini.splitjoin
	'echasnovski/mini.splitjoin',
	-- keys = function(_, keys)
	-- 	-- Populate the keys based on the user's options
	-- 	local plugin = require("lazy.core.config").spec.plugins["mini.splitjoin"]
	-- 	local opts = require("lazy.core.plugin").values(plugin, "opts", false)
	-- 	local mappings = {
	-- 		{ opts.mappings.toggle, desc = "Toggle splitjoin", mode = { "n", "v" } },
	-- 	}
	-- 	mappings = vim.tbl_filter(function(m)
	-- 		return m[1] and #m[1] > 0
	-- 	end, mappings)
	-- 	return vim.list_extend(mappings, keys)
	-- end,
	opts = {
		mappings = {
			toggle = 'gS',
			split = '',
			join = '',
		}
	}
}

return M
