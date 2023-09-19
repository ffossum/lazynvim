return {
  {
    "s1n7ax/nvim-window-picker",
    name = "window-picker",
    event = "VeryLazy",
    version = "2.*",
    opts = {
      highlights = {
        statusline = {
          focused = {
            fg = "#535c6a",
            bg = "#a0c980",
            bold = true,
          },
          unfocused = {
            fg = "#535c6a",
            bg = "#a0c980",
            bold = true,
          },
        },
        winbar = {
          focused = {
            fg = "#535c6a",
            bg = "#a0c980",
            bold = true,
          },
          unfocused = {
            fg = "#535c6a",
            bg = "#a0c980",
            bold = true,
          },
        },
      },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      "s1n7ax/nvim-window-picker",
    },
    opts = {
      filesystem = {
        group_empty_dirs = true,
      },
    },
  },
}
