return {
  {
    "sainnhe/edge",
    config = function()
      vim.o.termguicolors = true
      vim.g.edge_style = "aura"
      vim.g.edge_better_performance = 1
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "edge",
    },
  },
}
