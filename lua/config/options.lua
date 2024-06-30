-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
vim.g.lazyvim_picker = "fzf"

-- 启用绝对行号
opt.number = true
-- 禁用相对行号
opt.relativenumber = false
