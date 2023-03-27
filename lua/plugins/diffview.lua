return {
  {
    "sindrets/diffview.nvim",
    keys = {
      {
        "<leader>d",
        desc = "+Diffview",
      },
      {
        "<leader>do",
        "<cmd>DiffviewOpen<cr>",
        desc = "DiffviewOpen",
      },
      {
        "<leader>df",
        "<cmd>DiffviewFileHistory<cr>",
        desc = "DiffviewFileHistory",
      },
      {
        "<leader>dF",
        "<cmd>DiffviewFileHistory %<cr>",
        desc = "DiffviewFileHistory (current file)",
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
    },
  },
}
