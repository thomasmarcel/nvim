-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Copy to clipboard
local has_unnamedplus = vim.fn.has("unnamedplus")
if has_unnamedplus then
    vim.o.clipboard = "unnamedplus"
end

vim.api.nvim_buf_set_keymap(0, 'n', 'y', '"+y', { noremap = true, silent = true })
vim.api.nvim_buf_set_keymap(0, 'n', 'p', '"+p', { noremap = true, silent = true })

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

function Macos()
    return vim.fn.has("mac") == 1
end

function Linux()
    if package.os == 'Linux' then
        return true
    end
    if vim.fn.has('unix') and not vim.fn.has('macunix') and not vim.fn.has('win32unix')
        and not vim.fn.has('win64unix') then
        return true
    end
    return false
end

function Windows()
    return vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1
end

function OpenBuffer()
    if Macos() then
        vim.cmd('silent !open ' .. vim.fn.expand('%:p'))
        -- vim.cmd('silent !open -a "Google Chrome" ' .. vim.fn.expand('%:p'))
    elseif Linux() then
        vim.cmd('silent !xdg-open ' .. vim.fn.expand('%:p'))
    elseif Windows() then
        vim.cmd('silent !start ' .. vim.fn.expand('%:p'))
    end
end

vim.keymap.set("n", "<leader>vob", OpenBuffer, { noremap = true })

-- vim.keymap.set("n", "<leader>e", vim.lsp.diagnostic.show_line_diagnostics, { noremap = true, silent = true })
--
local function prettify_json()
    vim.api.nvim_command('%!jq .')
end

local function uglify_json()
    vim.api.nvim_command("%!jq -c .")
end

vim.keymap.set("n", "<leader>jq", prettify_json, { noremap = true })
vim.keymap.set("n", "<leader>ujq", uglify_json, { noremap = true })



return {
    bootstrap = function()
        local ensure_packer = function()
            local fn = vim.fn
            local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
            if fn.empty(fn.glob(install_path)) > 0 then
                fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
                vim.cmd [[packadd packer.nvim]]
                return true
            end
            return false
        end

        local packer_bootstrap = ensure_packer()
    end,
    plugins = function(use)
        -- require('copilot').definitions(use)
        require('animo.editor').definitions(use)
        -- require('completion').definitions(use)
        require('animo.navigation').definitions(use)
        require('animo.themes').definitions(use)
        -- require('languages.general').definitions(use)
        require('animo.languages.rust').definitions(use)
        -- require('languages.javascript').definitions(use)
        -- require('languages.python')
        -- require('languages.jupyter').definitions(use)
        -- require('learn').definitions(use)
        -- require('notes').definitions(use)
        -- require('notes').mappings()
        require('animo.debug').definitions(use)
        -- require('animo.writing').definitions(use)
        require('animo.git').definitions(use)
    end,
}
