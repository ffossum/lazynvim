return {
  {
    "sindrets/diffview.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      {
        "folke/which-key.nvim",
        optional = true,
        opts = {
          spec = {
            { "<leader>D", group = "Diffview" },
          },
        },
      },
    },
    keys = {
      {
        "<leader>Do",
        "<cmd>DiffviewOpen<cr>",
        desc = "DiffviewOpen",
      },
      {
        "<leader>Df",
        "<cmd>DiffviewFileHistory<cr>",
        desc = "DiffviewFileHistory",
      },
      {
        "<leader>DF",
        "<cmd>DiffviewFileHistory %<cr>",
        desc = "DiffviewFileHistory (current file)",
      },
    },
  },
}
