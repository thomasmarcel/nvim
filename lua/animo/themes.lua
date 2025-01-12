return {
    definitions = function(use)
        use { "preservim/vim-thematic" }

        use 'danilo-augusto/vim-afterglow'
        use { 'high-moctane/anthraxylon', branch = 'main' }
        use {
            'ayu-theme/ayu-vim',
            config = function()
                -- light, mirage, dark
                vim.cmd([[ let ayucolor="mirage" ]])
            end
        }
        use {
            'uloco/bluloco.nvim',
            requires = { 'rktjmp/lush.nvim' }
        }
        use {
            "catppuccin/nvim",
            as = "catppuccin",
            config = function()
                -- latte, frappe, macchiato, mocha
                vim.g.catppuccin_flavour = "frappe"
                require("catppuccin").setup()
            end
        }
        use { 'dracula/vim', as = 'dracula' }
        use { 'embark-theme/vim', as = 'embark', branch = 'main' }
        use 'kkga/vim-envy'
        use "rebelot/kanagawa.nvim"
        use { 'gzagatti/vim-leuven-theme',
            config = function()
                vim.opt.termguicolors = true
                vim.opt.guicursor = 'a:blinkon0-Cursor,i-ci:ver100'
                -- vim.cmd([[ colorscheme leuven ]])
            end
        }
        use 'jonathanfilip/vim-lucius'
        use { 'kaicataldo/material.vim', branch = 'main' }
        use 'savq/melange'
        use 'ishan9299/modus-theme-vim'
        use 'fxn/vim-monochrome'
        use { 'bluz71/vim-moonfly-colors', branch = 'cterm-compat' }
        use 'bluz71/vim-nightfly-colors'
        use "EdenEast/nightfox.nvim"
        use { 'nyoom-engineering/oxocarbon.nvim' }
        use 'haishanh/night-owl.vim'
        use { 'pbrisbin/vim-colors-off', branch = 'main' }
        use 'drewtempelmeyer/palenight.vim'
        use 'JoosepAlviste/palenightfall.nvim'
        use 'HenryNewcomer/vim-theme-papaya'
        use 'reedes/vim-colors-pencil'
        use 'matsuuu/pinkmare'
        use 'andreypopp/vim-colors-plain'
        use 'KKPMW/sacredforest-vim'
        use 'altercation/vim-colors-solarized'
        use 'lifepillar/vim-solarized8'
        use 'jacoborus/tender.vim'
        use 'folke/tokyonight.nvim'

        use {
            "jesseleite/nvim-noirbuddy",
            requires = { "tjdevries/colorbuddy.nvim", branch = "dev" },
            config = function()
                require('noirbuddy').setup {
                    preset = 'miami-nights',
                }
            end
        }

        vim.cmd([[
let g:thematic#themes = {
\ 'afterglow'  : {
\                  'typeface': 'FuraCode Nerd Font Mono Light',
\                },
\ 'anthraxylon'  : {
\                },
\ 'ayu'  : {
\                },
\ 'bluloco'  : {
\                },
\ 'catppuccin'  : {
\                },
\ 'dracula'  : {
\                  'typeface': 'FuraCode Nerd Font Mono Light',
\                },
\ 'embark'  : {
\                },
\ 'kanagawa'  : {
\                },
\ 'leuven'  : {
\                },
\ 'lucius'  : {
\                },
\ 'materiam'  : {
\                },
\ 'melange'  : {
\                },
\ 'modus-operandi'  : {
\                  'background': 'light',
\                },
\ 'modus-vivendi'  : {
\                },
\ 'monochrome'  : {
\                },
\ 'moonfly'  : {
\                },
\ 'nightfox'  : {
\                },
\ 'nightfly'  : {
\                },
\ 'night-owl'  : {
\                },
\ 'noirbuddy'  : {
\                },
\ 'off'  : {
\                  'typeface': 'Cascadia Code Regular',
\                },
\ 'oxocarbon'  : {
\                },
\ 'palenight'  : {
\                },
\ 'palenightfall'  : {
\                },
\ 'papaya'  : {
\                  'typeface': 'FuraCode Nerd Font Mono Light',
\                },
\ 'plain'  : {
\                },
\ 'pencil_dark' :{ 'colorscheme': 'pencil',
\                  'background': 'dark',
\                  'ruler': 1,
\                  'laststatus': 0,
\                  'typeface': 'Dank Mono Italic',
\                  'font-size': 11,
\                  'transparency': 10,
\                  'linespace': 8,
\                },
\ 'pencil_lite' :{ 'colorscheme': 'pencil',
\                  'background': 'light',
\                  'laststatus': 0,
\                  'ruler': 1,
\                  'typeface': 'FuraCode Nerd Font Mono Light',
\                  'fullscreen': 1,
\                  'transparency': 0,
\                  'font-size': 11,
\                  'linespace': 6,
\                },
\ 'pinkmare'  : {
\                },
\ 'sacredforest'  : {
\                  'typeface': 'FuraCode Nerd Font Mono Light',
\                },
\ 'solarized'  : {
\                  'typeface': 'Victor Mono Regular Nerd Font Complete Mono',
\                },
\ 'solarized8'  : {
\                  'typeface': 'FuraCode Nerd Font Mono Light',
\                },
\ 'tender'  : {
\                },
\ 'tokyonight'  : {
\                },
\ 'tokyonight-night'  : {
\                },
\ 'tokyonight-storm'  : {
\                },
\ 'tokyonight-day'  : {
\                },
\ 'tokyonight-moon'  : {
\                },
\ }



let g:thematic#defaults = {
\ 'background': 'dark',
\ 'laststatus': 2,
\ 'typeface': 'Dank Mono',
\ 'font-size': 11,
\ 'transparency': 10,
\ 'linespace': 2,
\ }

let g:thematic#theme_name = 'catppuccin'
]]       )
    end,
}
