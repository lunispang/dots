vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pf", ':Oil<CR>')
vim.keymap.set("n", "<leader>h", vim.cmd.noh)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
