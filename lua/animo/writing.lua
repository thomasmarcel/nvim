return {
    definitions = function(use)
        -- Autoclose
        use("preservim/vim-litecorrect")
        use("preservim/vim-wordchipper")
        use("preservim/vim-wordy")
        use("dbmrq/vim-ditto")
        use("preservim/vim-textobj-sentence")
        use("preservim/vim-textobj-quote")
        use("preservim/vim-pencil")
        use("preservim/vim-lexical")
        use("preservim/vim-markdown")
        use("preservim/tagbar")

        vim.g.litecorrect_enable_keybindings = 1
        vim.g.litecorrect_enable_on_save = 1

        -- Configuration for vim-wordchipper
        vim.g.wordchipper_enable_keybindings = 1
        vim.g.wordchipper_enable_on_save = 1

        -- Configuration for vim-wordy
        vim.g.wordy_enable_keybindings = 1
        vim.g.wordy_enable_on_save = 1

        -- Configuration for vim-ditto
        vim.g.ditto_enable_keybindings = 1
        vim.g.ditto_enable_on_save = 1

        -- Configuration for vim-textobj-sentence
        vim.g.textobj_sentence_enable_keybindings = 1
        vim.g.textobj_sentence_enable_on_save = 1

        -- Configuration for vim-textobj-quote
        vim.g.textobj_quote_enable_keybindings = 1
        vim.g.textobj_quote_enable_on_save = 1

        -- Configuration for vim-pencil
        vim.g.pencil_enable_keybindings = 1
        vim.g.pencil_enable_on_save = 1

        -- Configuration for vim-lexical
        vim.g.lexical_enable_keybindings = 1
        vim.g.lexical_enable_on_save = 1

        -- Configuration for vim-markdown
        vim.g.markdown_enable_keybindings = 1
        vim.g.markdown_enable_on_save = 1

        -- Configuration for tagbar
        vim.g.tagbar_enable_keybindings = 1
        vim.g.tagbar_enable_on_save = 1

        -- function to activate the plugins
        local function activate_writing()
            packer.startup(plugins)
        end

        -- function to deactivate the plugins
        local function deactivate_writing()
            packer.unuse(plugins)
        end

        -- commands
        -- commands to activate and deactivate the plugins
        -- vim.cmd("command! -nargs=0 WritingActivate lua activate_writing()")
        -- vim.cmd("command! -nargs=0 WritingDeactivate lua deactivate_writing()")

        -- vim.api.nvim_set_keymap("n", "<leader>wa", ":WritingActivate<CR>", { noremap = true, silent = true })
        -- nvim_create_augroups({
        --     -- autocmds to activate and deactivate the plugins
        --     writing = {
        --         { "BufRead,BufNewFile *.md,*.txt", "lua activate_writing()" },
        --         { "BufLeave *.md,*.txt", "lua deactivate_writing()" },
        --     },
        -- })
        --
        -- automatically activate the plugins for markdown and text files
        -- vim.cmd("autocmd BufRead,BufNewFile *.md,*.txt lua activate_writing()")
    end,
}
