return {
  "akinsho/toggleterm.nvim",
  -- config = function()
  --   require("toggleterm").setup({})
  -- end,
  -- keys = {
  --   {
  --     "<C-`>",
  --     function()
  --       vim.cmd("ToggleTerm")
  --     end,
  --     desc = "Toggle terminal",
  --   },
  --   {
  --     "<C-`>",
  --     function()
  --       vim.cmd("ToggleTerm")
  --     end,
  --     desc = "Toggle terminal",
  --     mode = "t",
  --   },
  -- },

  opts = {
    direction = "vertical",
    size = 80,
    persist_size = false,
    open_mapping = "<c-`>",
  },
}
