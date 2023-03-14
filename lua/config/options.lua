-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.cmd([[autocmd WinEnter * exec &number==1 ? "set relativenumber" : ""]])
vim.cmd([[autocmd WinLeave * set norelativenumber]])
