vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

-- Lazy
map("n","<leader>l", "<cmd>Lazy<CR>", {desc = "Lazy"})
map("n","<leader>m", "<cmd>Mason<CR>", {desc = "Mason"})

-- Window navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>","<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Move lines
map("n", "<A-down>", ":move .+1<CR>==")
map("n", "<A-up>", ":move .-2<CR>==")
map("v", "<A-down>", ":move '>+1<CR>gv=gv")
map("v", "<A-up>", ":move '<-2<CR>gv=gv")

-- Stay in indent mode
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Clear search highlight map(
map("n", "<Esc>", "<cmd>nohlsearch<CR>")
