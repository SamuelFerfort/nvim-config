-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local keymap = vim.keymap.set

keymap("n", "<C-a>", "gg0VG", { desc = "Select all" })
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Up" })
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Down" })
