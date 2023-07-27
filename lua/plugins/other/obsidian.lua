local M = {
	"epwalsh/obsidian.nvim",
	-- lazy = true,
	-- event = { "BufReadPre path/to/my-vault/**.md" },
	-- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand':
	-- event = { "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md" },
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	opts = {
		dir = "~/Obsidian/Main",
		mappings = {},
		-- see below for full list of options 👇
	},
}

M.keys = {
	{ "<leader>oo", ":ObsidianOpen<cr>", desc = "Obsidian Open"},
	{ "<leader>os", ":ObsidianSearch<cr>", desc = "Obsidian Search"},
}

return M
