return {
    definitions = function(use)
        -- Autoclose
        use("tpope/vim-surround")

        -- AI completion
        use({ "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp" })
        use("hrsh7th/cmp-path")
    end,
}
