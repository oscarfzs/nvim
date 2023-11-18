----------------------------------------------------------------------------------------------------
-- Put all plugins you want to disable here

local disabled = {
  -- "stevearc/conform.nvim",
  always = {
    "stevearc/conform.nvim",
  },

  vscode = {
    "lukas-reineke/indent-blankline.nvim",
    "folke/todo-comments.nvim",
  },
}

----------------------------------------------------------------------------------------------------

local M = {}

for _, name in pairs(disabled.always) do
  table.insert(M, {
    name,
    enabled = false,
  })
end

for _, name in pairs(disabled.vscode) do
  table.insert(M, {
    name,
    cond = not vim.g.vscode,
  })
end

return M
