return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require("nvim-treesitter.configs").setup {
            ensure_installed = { "c", "lua", "rust", "python", "bash", "bibtex", "csv", "dockerfile", "go", "latex", "markdown", "toml" },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
            },
            rainbow = {
                enable = true,
                extended_mode = true,
                max_file_lines = nil,
            }
        }
    end

}
