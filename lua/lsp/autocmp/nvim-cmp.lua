local M = 	{
	-- https://github.com/hrsh7th/nvim-cmp
	'hrsh7th/nvim-cmp',
}

M.config = function()
	local cmp = require('cmp')
	cmp.setup {
		snippet = {
			expand = function(args)
				require('luasnip').lsp_expand(args.body)
			end,
		},

		sources = cmp.config.sources(
			{
				{ name = 'nvim_lsp' },
				{ name = 'luasnip' },
			},
			{
				{ name = 'buffer' },
			}
		),

		mapping = cmp.mapping.preset.insert(
			{
				['<C-b>'] = cmp.mapping.scroll_docs(-4),
				['<C-f>'] = cmp.mapping.scroll_docs(4),
				['<C-e>'] = cmp.mapping.abort(),
				['<cr>'] = cmp.mapping.confirm( { select = true } ),
			}
		)
	}

	-- completion for / and ? search for the current buffer
	cmp.setup.cmdline(
		{ '/', '?' },
		{
			mapping = cmp.mapping.preset.cmdline(),
			sources = {
				{ name = 'buffer' }
			}
		}
	)

	-- completion for the commandline
	cmp.setup.cmdline(
		{ ':' },
		{
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources(
				{
					{ name = 'path' }
				},
				{
					{ name = 'cmdline' }
				}
			)
		}
	)
end

return M
