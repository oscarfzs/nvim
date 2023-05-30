local M = {
  -- https://github.com/neovim/nvim-lspconfig
  'neovim/nvim-lspconfig',
}

M.keys = {
  { '<leader>e', vim.diagnostic.open_float, 'n' },
}

M.config = function()
  local lspconfig = require('lspconfig')
  local lsp_defaults = lspconfig.util.default_config

  lsp_defaults.capabilities = vim.tbl_deep_extend(
    'force',
    lsp_defaults.capabilities,
    require('cmp_nvim_lsp').default_capabilities()
  )
end

return M
