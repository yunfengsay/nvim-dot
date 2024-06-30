-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
-- leader + ft = search content in root dir
-- 在根目录中搜索内容
local existing_ft = vim.fn.maparg("<leader>ft", "n")
if existing_ft ~= "" then
  vim.keymap.del("n", "<leader>ft")
end
local existing_ft = vim.fn.maparg("<leader>st", "n")
if existing_ft ~= "" then
  vim.keymap.del("n", "<leader>st")
end
map("n", "<leader>st", function()
  require("telescope.builtin").live_grep({
    cwd = vim.fn.getcwd(),
  })
end, { desc = "搜索内容 (root dir)" })
map("n", "<leader>ft", function()
  require("telescope.builtin").live_grep({
    cwd = vim.fn.getcwd(),
  })
end, { desc = "搜索内容 (root dir)" })

-- leader + ff = search file in root dir
-- 在根目录中搜索文件
map("n", "<leader>ff", function()
  require("telescope.builtin").find_files({
    cwd = vim.fn.getcwd(),
  })
end, { desc = "搜索文件 (root dir)" })

-- 使用 leader + / 进行注释切换
map("n", "<leader>/", function()
  require("Comment.api").toggle.linewise.current()
end, { desc = "切换行注释" })

map(
  "v",
  "<leader>/",
  "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
  { desc = "切换行注释" }
)
