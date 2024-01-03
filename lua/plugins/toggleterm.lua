return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        require("toggleterm").setup {
            persist_mode = true, -- if set to true (default) the previous terminal mode will be remembered
            direction = "float",
        }
        vim.keymap.set("n", "<C-\\>", "<cmd>ToggleTerm<cr>", {})
        vim.keymap.set("t", "<C-\\>", "<cmd>ToggleTerm<cr>", {})
    end
}
