require("config.lazy")

vim.cmd("set scrolloff=8")


vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set tabstop=4 softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")
vim.cmd("set smartindent")
vim.g.mapleader = ' '

vim.keymap.set('n', '<leader><CR>', ':so ~/.config/nvim/init.lua<CR>') 
vim.keymap.set('n', '<leader>pv', ':Vex<CR>')


-- add C-p to search file in git, leader pf project files 
-- nnoremap <C-j> :cnext<CR>
-- nnoremap <C-k> :cprev<CR>
