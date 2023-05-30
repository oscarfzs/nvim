vim.g.mapleader = ','

require("core.mappings")
require("core.settings")

-- install lazy.nvim if it is not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	print("lazy.nvim not installed")
	print("cloning from https://github.com/folke/lazy.nvim.git")
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup{
	spec = {
		{ import = 'plugins' },
		{ import = 'themes' },
		{ import = 'lsp' },
	},
}

vim.keymap.set('n', '<leader>L', '<cmd>Lazy<cr>')
