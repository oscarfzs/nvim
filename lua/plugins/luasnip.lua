-- https://github.com/L3MON4D3/LuaSnip/blob/master/DOC.md
local M = {
	"L3MON4D3/LuaSnip",
	dependencies = { "rafamadriz/friendly-snippets" },
	lazy = false,
	enabled = true,
	build = "make install_jsregexp",
}

M.config = function()
	require("luasnip").setup({
		enable_autosnippets = true,
		store_selection_keys = "<Tab>",
	})
	require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets/luasnip" })
	-- require("luasnip.loaders.from_snipmate").load({ paths = "~/.config/nvim/snippets/snipmate/" })
	require("luasnip.loaders.from_vscode").lazy_load() -- needed for friendly-snippets
end

M.keys = {
	{
		"<tab>",
		function()
			return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-next" or "<tab>"
		end,
		expr = true,
		silent = true,
		mode = "i",
	},
	{
		"<tab>",
		function()
			require("luasnip").jump(1)
		end,
		mode = "s",
	},
	{
		"<s-tab>",
		function()
			require("luasnip").jump(-1)
		end,
		mode = { "i", "s" },
	},
}

return M
