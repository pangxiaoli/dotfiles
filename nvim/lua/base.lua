vim.o.number = true
vim.o.relativenumber = true
vim.o.fileencoding = "utf-8"
vim.o.encoding = "utf-8"
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4


--- theme
vim.cmd[[colorscheme dracula]]

--- keybindings
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

--- visual 模式下可以连续 > 缩进代码
map('v', '<', '<gv', opt)
map('v', '>', '>gv', opt)

--- 窗口跳转
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)

-- bufferline 
-- 左右切换
map("n", "<A-,>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<A-.>", ":BufferLineCycleNext<CR>", opt)

-- 关闭
map("n", "<A-q>", ":BufferLinePickClose<CR>", opt)

-- 移动
map("n", "<A-<>", ":BufferLineMovePrev<CR>", opt)
map("n", "<A->>", ":BufferLineMoveNext<CR>", opt)

-- nvimTree
map('n', '<C-n>', ':NvimTreeToggle<CR>', opt)
