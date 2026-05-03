local g = vim.g
local opt = vim.opt

g.snacks_animate = false
g.mapleader = " "

vim.env.PATH = vim.fn.stdpath("data") .. "/mason/bin:" .. vim.env.PATH

-- General
opt.mouse = "a"
opt.cursorline = false
opt.scrolloff = 8
opt.guicursor = "n-v-c-sm-i-ci-ve:block,r-cr-o:hor20,i:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor"
opt.swapfile = false
opt.cmdheight = 0

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
-- opt.autoindent = false
opt.wrap = true

-- Memory, CPU
opt.history = 100
opt.lazyredraw = false
opt.synmaxcol = 240
opt.updatetime = 100

