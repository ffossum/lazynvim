return {
  {
    "s1n7ax/nvim-window-picker",
    config = true,
    opts = {
      fg_color = "#535c6a",
      other_win_hl_color = "#a0c980",
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = { "s1n7ax/nvim-window-picker" },
    opts = {
      filesystem = {
        group_empty_dirs = true,
      },
    },
  },
}
