local colorscheme = require("lazyvim.plugins.colorscheme")
-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local g = vim.g
local opt = vim.opt

g.mapleader = " "

-- General
opt.mouse = "a"
opt.cursorline = false
opt.scrolloff = 8
opt.guicursor = "n-v-c-sm-i-ci-ve:block,r-cr-o:hor20,i:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor"
opt.swapfile = false

-- Neovim UI
opt.number = true
opt.relativenumber = true
opt.ignorecase = true
opt.smartcase = true
opt.termguicolors = true
opt.hlsearch = true
opt.smartcase = true

-- Tabs, indent
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true
opt.wrap = true

-- Memory, CPU
opt.history = 100
opt.lazyredraw = false
opt.synmaxcol = 240
opt.updatetime = 100
