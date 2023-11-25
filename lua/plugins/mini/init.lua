return {
  {
    "echasnovski/mini.nvim",
    version = false,
  },
  {
    "echasnovski/mini.splitjoin",
    version = false,
    config = function()
      require('mini.splitjoin').setup()
    end,
  },
}
