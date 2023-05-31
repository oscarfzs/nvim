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

local ensure_installed = {
  -- "clangd",
  "gopls",
  "lua_ls",
  "pyright",
  "rust_analyzer",
}

local M = {
  'williamboman/mason-lspconfig.nvim',
}

M.config = function()
  require('mason-lspconfig').setup {
     -- A list of servers to automatically install if they're not already installed. Example: { "rust_analyzer@nightly", "lua_ls" }
    ensure_installed = ensure_installed,

    -- Whether servers that are set up (via lspconfig) should be automatically installed if they're not already installed.
    automatic_installation = true,
  }

  -- Automate lsp server setup whenever mason.nvim installs an lsp
  -- see :h mason-lspconfig-automatic-server-setup 
  require('mason-lspconfig').setup_handlers(handlers)
end


return M
