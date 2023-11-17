----------------------------------------------------------------------------------------------------
-- Put all plugins you want to disable here

local disabled = {
  "stevearc/conform.nvim",
}

----------------------------------------------------------------------------------------------------

local M = {}

for idx, name in pairs(disabled) do
  M[idx] = {
    name,
    enabled = false,
  }
end

return M
