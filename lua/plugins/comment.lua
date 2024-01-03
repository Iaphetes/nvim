return {
    'numToStr/Comment.nvim',
    lazy = false,
    config = function()
        require('Comment').setup({
            toggler = {
                ---Line-comment toggle keymap
                line = '<leader>/',
                ---Block-comment toggle keymap
                block = 'gbc',
            },
            opleader = {
                line = '<leader>/',
                ---Block-comment toggle keymap
                block = 'gbc',
            }
        }
        )
    end
}
