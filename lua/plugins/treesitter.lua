-- https://github.com/nvim-treesitter/nvim-treesitter
local M =  {
   'nvim-treesitter/nvim-treesitter',
   build = ':TSUpdate',
}

local ensure_installed = {
	"css",
	"haskell",
	"html",
	"javascript",
	"latex",
   "c",
   "go",
   "lua",
   "query",
   "rust",
   "vim",
   "vimdoc",
}

M.config = function()
   require('nvim-treesitter.configs').setup{
      highlight = { enable = true },
      ensure_installed = ensure_installed,
      auto_install = true,
   }
end

return M
