return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        javascript = { "eslint_d" },
        typescript = { "eslint_d" },
        javascriptreact = { "eslint_d" },
        typescriptreact = { "eslint_d" },
      },
    },
  },
  -- {
  --   "neovim/nvim-lspconfig",
  --   opts = {
  --     inlay_hints = {
  --       enabled = true,
  --     },
  --     servers = { eslint = {} },
  --     setup = {
  --       -- This is necessary to prevent LSP server conflicts between tsserver and eslint
  --       eslint = function()
  --         require("lazyvim.util").lsp.on_attach(function(client)
  --           if client.name == "eslint" then
  --             client.server_capabilities.documentFormattingProvider = true
  --           elseif client.name == "tsserver" then
  --             client.server_capabilities.documentFormattingProvider = false
  --           end
  --         end)
  --       end,
  --     },
  --   },
  -- },
  -- {
  --   "nvim-treesitter/nvim-treesitter-textobjects",
  --   config = {
  --     textobjects = {
  --       swap = {
  --         enable = true,
  --         swap_next = {
  --           ["<leader>a"] = "@parameter.inner",
  --         },
  --         swap_previous = {
  --           ["<leader>A"] = "@parameter.inner",
  --         },
  --       },
  --     },
  --   }
  -- },
  -- {
  --   "L3MON4D3/LuaSnip",
  --   config = function()
  --     require("luasnip").filetype_extend("javascript", { "javascriptreact" })
  --     require("luasnip").filetype_extend("typescript", { "typescriptreact" })
  --     require("luasnip.loaders.from_lua").lazy_load({ paths = "./snippets/luasnip/" })
  --   end,
  -- },
  -- {
  --   "hrsh7th/nvim-cmp",
  --   event = { "InsertEnter", "CmdLineEnter" },
  --   dependencies = { 'hrsh7th/cmp-cmdline', },
  --   opts = function(_, opts)
  --     local cmp = require('cmp')
  --     -- `:` cmdline setup.
  --     cmp.setup.cmdline(':', {
  --       mapping = cmp.mapping.preset.cmdline(),
  --       sources = cmp.config.sources({
  --         { name = 'path' }
  --       }, {
  --         {
  --           name = 'cmdline',
  --           option = {
  --             ignore_cmds = { 'Man', '!' }
  --           }
  --         }
  --       })
  --     })
  --   end,
  -- },
}
