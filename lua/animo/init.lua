-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

return {
    plugins = function(use)
        -- require('copilot').definitions(use)
        require('animo.editor').definitions(use)
        -- require('completion').definitions(use)
        require('animo.navigation').definitions(use)
        require('animo.themes').definitions(use)
        -- require('languages.general').definitions(use)
        -- require('languages.rust').definitions(use)
        -- require('languages.javascript').definitions(use)
        -- require('languages.python')
        -- require('languages.jupyter').definitions(use)
        -- require('learn').definitions(use)
        -- require('notes').definitions(use)
        -- require('notes').mappings()
        require('animo.debug').definitions(use)
    end,

}
