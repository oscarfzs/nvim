return {
	-- https://github.com/iurimateus/luasnip-latex-snippets.nvim
	"iurimateus/luasnip-latex-snippets.nvim",
	enabled = false,
	-- vimtex isn't required if using treesitter
	requires = { "L3MON4D3/LuaSnip", "lervag/vimtex" },
	config = function()
		require("luasnip-latex-snippets").setup{
			use_treesitter = true,
		}
		-- or setup({ use_treesitter = true })
	end,
}
