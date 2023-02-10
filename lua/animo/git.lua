return {
    definitions = function(use)
        use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
        use {
            'TimUntersberger/neogit',
            requires = 'nvim-lua/plenary.nvim',
            config = function()
                require('neogit').setup {
                    integrations = {
                        diffview = true,
                    },
                }
            end,
        }
    end,
}
