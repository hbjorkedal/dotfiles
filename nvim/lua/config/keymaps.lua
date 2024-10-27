vim.g.mapleader = " " -- Space as leaderkey
vim.g.maplocalleader = " "

vim.keymap.set("v", "p", '"_dP')                 -- keeps paste register when pasting over text
vim.keymap.set("n", "Y", "y$")                   -- copies to the end of line

vim.keymap.set("i", "jk", "<Esc>")               -- leave insertmode
vim.keymap.set("n", "<leader>e", ":Neotree<CR>") -- Fileexplorer

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
