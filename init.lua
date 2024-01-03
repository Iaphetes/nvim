vim.o.relativenumber = true

vim.o.clipboard = unnamedplus 
vim.api.nvim_set_option("clipboard","unnamed")
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- require("core.plugins")
-- require("core.plugin_config")
vim.api.nvim_exec([[
  augroup FormatAutogroup
    autocmd!
    autocmd BufWritePre *.mason,*.md lua vim.lsp.buf.formatting_sync()
  augroup END
]], true)



local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- Check if lazy is installed
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
-- Add the lazypath to the runtime path to make its scripts usable
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")

require("core.keymaps")
-- vim.cmd [[
--     autocmd VimEnter * Telescope find_files 
--
-- ]]
-- Flag to check if NeoTree has been opened
local neotree_opened = false

-- Auto command to open NeoTree on first buffer enter
vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*",
    callback = function()
        if not neotree_opened then
            vim.cmd("Neotree")
            neotree_opened = true
        end
    end
})
vim.api.nvim_create_autocmd("VimEnter", {
    pattern = "*",
    callback = function()
        if vim.fn.argc() == 0 and vim.fn.argc() == 0 then
            vim.cmd("Telescope find_files")
        end
    end
})
