return {
  "L3MON4D3/LuaSnip",
  config = function()
    require("luasnip").filetype_extend("javascript", { "javascriptreact" })
    require("luasnip").filetype_extend("typescript", { "typescriptreact" })
    require("luasnip.loaders.from_lua").lazy_load({ paths = "./snippets/luasnip/" })
  end,
}
