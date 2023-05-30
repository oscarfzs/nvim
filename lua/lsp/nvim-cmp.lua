-- https://github.com/hrsh7th/nvim-cmp
local M = 	{
	'hrsh7th/nvim-cmp',
}

M.config = function()
	local cmp = require('cmp')
	cmp.setup {
		sources = cmp.config.sources(
			{
				{ name = 'nvim_lsp' },
				{ name = 'luasnip' },
			},
			{
				{ name = 'buffer' },
			}
		)
	}

	-- something to do with buffers
	cmp.setup.cmdline({ '/', '?' }, {
		mapping = cmp.mapping.preset.cmdline(),
		sources = {
			{ name = 'buffer' }
		}
	})

	-- cmdline completion
	cmp.setup.cmdline(':', {
		mapping = cmp.mapping.preset.cmdline(),
		sources = cmp.config.sources({
			{ name = 'path' }
		}, {
			{ name = 'cmdline' }
		})
	})
end

return M
