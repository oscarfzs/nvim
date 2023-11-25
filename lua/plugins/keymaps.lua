return {
  {
    "folke/flash.nvim",
    keys = {
      -- { "S",         mode = { "n", "x", "o" }, false },
      -- { "<leader>S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    },
  },
  {
    "carbon-steel/detour.nvim",
    keys = {
      { '<c-w>d',     mode = { 'n' }, ":Detour<cr>" },
      { '<leader>dt', mode = { 'n' }, ":Detour<cr>" },
      {
        '<leader>df',
        mode = { 'n' },
        function()
          require('detour').Detour() -- Open a detour popup

          -- Switch to a blank buffer to prevent any accidental changes.
          vim.cmd.enew()
          vim.bo.bufhidden = 'delete'

          require('telescope.builtin').find_files({}) -- Open telescope prompt
          -- vim.api.nvim_feedkeys("term", "n", true) -- popuplate prompt with "term"
        end
      },
      {
        '<leader>db',
        mode = { 'n' },
        function()
          require('detour').Detour() -- Open a detour popup

          -- Switch to a blank buffer to prevent any accidental changes.
          vim.cmd.enew()
          vim.bo.bufhidden = 'delete'

          require('telescope.builtin').buffers({}) -- Open telescope prompt
          -- vim.api.nvim_feedkeys("term", "n", true) -- popuplate prompt with "term"
        end
      },
    },
  },
}
