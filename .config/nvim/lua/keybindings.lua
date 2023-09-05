vim.g.mapleader = " "
vim.g.maplocalleader = " "
local opt = { noremap = true, silent = true }

-- nvimTree
vim.api.nvim_set_keymap('n','<leader>t',':NvimTreeToggle<CR>',opt)
vim.api.nvim_set_keymap('n','<leader>,',':tabp<CR>',opt)
vim.api.nvim_set_keymap('n','<leader>.',':tabn<CR>',opt)
vim.api.nvim_set_keymap('n','<leader>c',':tabc<CR>',opt)
