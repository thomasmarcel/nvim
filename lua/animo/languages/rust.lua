return {
    definitions = function(use)
        use("rust-lang/rust.vim")
        use 'simrat39/rust-tools.nvim'

        vim.g.rustfmt_autosave = 1
        vim.g.rust_clip_command = "pbcopy"

        local rt = require("rust-tools")

        rt.setup({
            server = {
                on_attach = function(_, bufnr)
                    -- Hover actions
                    vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
                    -- Code action groups
                    vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
                end,
            },
        })
    end,
}
