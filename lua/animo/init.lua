-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Copy to clipboard
local has_unnamedplus = vim.fn.has("unnamedplus")
if has_unnamedplus then
  vim.o.clipboard = "unnamedplus"
end

vim.api.nvim_buf_set_keymap(0, 'n', 'y', '"+y', {noremap = true, silent = true})
vim.api.nvim_buf_set_keymap(0, 'n', 'p', '"+p', {noremap = true, silent = true})

local function prettify_json()
  vim.api.nvim_command("%!jq .")
end

local function uglify_json()
  vim.api.nvim_command("%!jq -c .")
end

vim.keymap.set("n", "<leader>jq", prettify_json, {noremap = true})
vim.keymap.set("n", "<leader>ujq", uglify_json, {noremap = true})

local function set_json_filetype()
  if string.match(vim.api.nvim_buf_get_name(0), '%.geojson$') or string.match(vim.api.nvim_buf_get_name(0), '%.json$') then
    -- vim.filetype('json')
    vim.api.nvim_buf_set_option(0, 'filetype', 'json')
  end
end

vim.api.nvim_create_autocmd({ "BufReadPost" }, { pattern = { "*.geojson", "*.bson" }, callback = set_json_filetype })

function Format()
    vim.lsp.buf.format(nil, 100)
end

vim.api.nvim_create_autocmd({ "BufWritePre" }, { pattern = { "*" }, callback = Format })

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
