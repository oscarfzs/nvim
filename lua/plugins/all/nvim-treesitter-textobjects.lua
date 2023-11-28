return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  config = {
    textobjects = {
      swap = {
        enable = true,
        swap_next = {
          ["<leader>a"] = "@parameter.inner",
        },
        swap_previous = {
          ["<leader>A"] = "@parameter.inner",
        },
      },
    },
  }
}
