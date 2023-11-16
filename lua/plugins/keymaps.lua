return {
  {
    "folke/flash.nvim",
    keys = {
      { "S",         mode = { "n", "x", "o" }, false },
      { "<leader>S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    },
  }
}
