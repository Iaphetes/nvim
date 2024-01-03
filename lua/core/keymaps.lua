-- See https://github.com/nanotee/nvim-lua-guide#using-meta-accessors

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
-- vim.opt.cursorline = true
vim.opt.autoread = true

-- tab width
vim.opt.tabstop = 4

vim.opt.softtabstop = 4
vim.opt.tabstop = 4
-- indentation width
vim.opt.shiftwidth = 4
-- Indent by missing number of spaces
vim.opt.shiftround = true
-- Expand the tab to n spaces
vim.opt.expandtab = true

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Neotree
