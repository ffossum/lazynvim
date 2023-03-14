return {
  "akinsho/toggleterm.nvim",
  keys = {
    { [[<c-\>]], [[<cmd>exe v:count1 . "ToggleTerm"<cr>]], desc = "Toggle terminal", mode = "n" },
    { [[<c-\>]], [[<cmd>close<cr>]], desc = "Close terminal", mode = "t" },
    { [[<c-`>]], [[<cmd>exe v:count1 . "ToggleTerm"<cr>]], desc = "Toggle terminal", mode = "n" },
    { [[<c-`>]], [[<cmd>close<cr>]], desc = "Toggle terminal", mode = "t" },
  },
  config = true,
  opts = {
    direction = "vertical",
    size = 100,
    persist_size = false,
  },
}
