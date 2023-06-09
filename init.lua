require("core.mappings")
require("core.settings")

-- install lazy.nvim if it is not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	print("lazy.nvim not installed")

	local input
	repeat
		input = vim.fn.input("Install lazy.nvim? (y/n): ")
	until input == "y" or input == "n"

	if input == 'y' then
		print("    cloning from https://github.com/folke/lazy.nvim.git ...")
		vim.fn.system {
			"git",
			"clone",
			"--filter=blob:none",
			"https://github.com/folke/lazy.nvim.git",
			"--branch=stable", -- latest stable release
			lazypath,
		}
	else return
	end
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup{
	spec = {
		{ import = 'plugins' },
		{ import = 'themes' },
		{ import = 'lsp' },
		{ import = 'lsp.autocmp' },
	},
	defaults = {
		cond = not vim.g.vscode, -- by default, plugins are not loaded in vscode
	}
}

vim.keymap.set('n', '<leader>L', '<cmd>Lazy<cr>')

vim.cmd.colorscheme 'catppuccin-macchiato'
