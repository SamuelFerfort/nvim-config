-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Options are automatically loaded before lazy.nvim startup
vim.opt.scrolloff = 14 -- Keep 12 lines above/below cursor when scrolling
vim.opt.ignorecase = true -- Ignore case when searching
vim.opt.smartcase = true -- Unless uppercase is used in search
vim.opt.guifont = "JetBrainsMono Nerd Font:h16"
-- Fix for confirmation dialogs
vim.opt.confirm = true -- Show dialog boxes instead of command-line messages
local shortmess = vim.o.shortmess:gsub("F", "") -- Remove 'F' from shortmess
vim.opt.shortmess = shortmess

-- Some nice ones for visual feedback
vim.opt.updatetime = 100 -- Faster completion
vim.opt.timeoutlen = 300 -- Time to wait for mapped sequence to complete
