--- Set the Leader key 
vim.g.mapleader = " "

--- indenting width
vim.opt.shiftwidth = 4

--- change windows with h j k l
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

--- nvim-tree keybinds
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle .<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-m>', ':NvimTreeToggle ~/<CR>', { noremap = true, silent = true })

--- toggleterm keybinds
vim.keymap.set('n', '<Leader>t', ':ToggleTerm <CR>', { noremap = true, silent = true })
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]]) --- Use escape to change to normal mode

--- packagemanager lazy 
require("config.lazy")
require("toggleterm").setup{}
