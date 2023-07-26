local M = {
	"L3MON4D3/LuaSnip",
	dependencies = { "rafamadriz/friendly-snippets" },
}

M.config = function()
	require("luasnip").setup({
		enable_autosnippets = true,
		store_selection_keys = "<Tab>",
	})
	require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets/" })
	require("luasnip.loaders.from_snipmate").load({ paths = "~/.config/nvim/snippets/" })
	require("luasnip.loaders.from_vscode").lazy_load()
end
--
M.keys = {
	-- { '<Tab>', ":lua ls.expand()", "i", silent = true}
	{
		"<Tab>",
		function()
			require("luasnip").jump(1)
		end,
		{ "i", "s" },
		{ silent = true },
	},
	{
		"<S-Tab>",
		function()
			require("luasnip").jump(-1)
		end,
		{ "i", "s" },
		{ silent = true },
	},
}

return M
