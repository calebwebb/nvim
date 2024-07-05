-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- single-line
vim.keymap.set("n", "<A-down>", ":move .+1<CR>==")
vim.keymap.set("n", "<A-up>", ":move .-2<CR>==")

-- multi-line
vim.keymap.set("v", "<A-down>", ":move '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-up>", ":move '<-2<CR>gv=gv")
