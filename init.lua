--- Set the Leader key 
vim.g.mapleader = " "
-- vim.opt.virtualedit="all"

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
vim.keymap.del('n', '<CR>') --- otherwise it will open with enter for some reason

--- toggleterm keybinds
vim.keymap.set('n', '<Leader>t', ':ToggleTerm <CR>', { noremap = true, silent = true })
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]]) --- Use escape to change to normal mode

--- bufferline keybinds
vim.keymap.set('n', '<tab>', ':BufferLineCycleNext <CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<s-tab>', ':BufferLineCyclePrev <CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>x', ':BufferLinePickClose <CR>', { noremap = true, silent = true })

--- transparent toggle
vim.keymap.set('n', '<Leader>a', ':TransparentToggle<CR>', { noremap = true, silent = true })

--- lsp show err msg
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = true,
  float = {
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})


--- packagemanager lazy 
require("config.lazy")
require("toggleterm").setup{}

--- bufferline setup
vim.opt.termguicolors = true
require("bufferline").setup{}

 -- Themery config
require("themery").setup({
  themes = {"gruvbox", "tokyonight", "moonfly"}, -- Your list of installed colorschemes.
  livePreview = true, -- Apply theme while picking. Default to true.
})
