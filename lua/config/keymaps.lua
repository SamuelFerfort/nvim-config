-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
vim.keymap.set("n", "<Tab>", ":", { noremap = true })
vim.keymap.set("n", "<C-a>", "gg0VG", { desc = "Select all" })
-- move lines up and down in visual mode with better selection preservation
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })
-- quick show all problems in a project-wide list
vim.keymap.set("n", "ç", "<cmd>Trouble<cr>", { desc = "Show trouble/problems" })
-- home row movement in insert mode
vim.keymap.set("i", "<C-h>", "<Left>", { desc = "Move cursor left" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "Move cursor right" })
-- quick backspace/delete
vim.keymap.set("i", "<C-u>", "<BS>", { desc = "Backspace" })
vim.keymap.set("i", "<C-d>", "<Del>", { desc = "Delete" })
