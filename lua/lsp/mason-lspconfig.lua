local handlers = {
  function (server_name)
    require('lspconfig')[server_name].setup{}
  end,
  -- setup function for lua-language-server
  ['lua_ls'] = function ()
    local lspconfig = require('lspconfig')
    lspconfig.lua_ls.setup{
      settings = {
        Lua = {
      diagnostics = {
            globals = { 'vim' },
          },
        },
      },
    }
  end
}

local M = {
  'williamboman/mason-lspconfig.nvim',
}

M.config = function()
  require('mason-lspconfig').setup()

  -- Automate lsp server setup whenever mason.nvim installs an lsp
  -- see :h mason-lspconfig-automatic-server-setup 
  require('mason-lspconfig').setup_handlers(handlers)
end


return M
