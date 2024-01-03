return {
    -- 'ribru17/bamboo.nvim',
    -- lazy = false,
    -- priority = 1000,
    -- config = function()
    --     require('bamboo').setup {
    --         -- optional configuration here
    --         style = "multiplex"
    --     }
    --     require('bamboo').load()
    --     vim.cmd.colorscheme "bamboo"
    -- end,
    "RRethy/nvim-base16",
    config = function()
        vim.cmd('colorscheme base16-selenized-black')
    end
}
