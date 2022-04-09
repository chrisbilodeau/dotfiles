local set = vim.opt

vim.g.mapleader = " "
vim.cmd("colorscheme nord")
set.number = true -- Line numbers

-- 4 spaces for tabs (Ref: https://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces#1878983)
set.tabstop=8
set.softtabstop=0
set.expandtab=true
set.shiftwidth=4
set.smarttab=true
