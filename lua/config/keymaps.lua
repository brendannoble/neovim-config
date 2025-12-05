-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- Move buffer left
map("n", "<leader>bH", "<cmd>BufferLineMovePrev<CR>", { desc = "Move buffer left" })

-- Move buffer right
map("n", "<leader>bL", "<cmd>BufferLineMoveNext<CR>", { desc = "Move buffer right" })

-- Open AI CLI Window
map({ "n", "i", "t", "x" }, "<leader>t", function()
  require("sidekick.cli").toggle()
end, { desc = "Toggle Sidekick CLI" })
