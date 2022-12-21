return {
    definitions = function(use)
  use {"preservim/vim-thematic"}

  use 'danilo-augusto/vim-afterglow'
  use {'high-moctane/anthraxylon', branch = 'main' }
  use {
    'ayu-theme/ayu-vim',
    config = function()
      -- light, mirage, dark
      vim.cmd([[ let ayucolor="mirage" ]])
    end
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
  use {'dracula/vim', as = 'dracula' }
  use {'embark-theme/vim', as = 'embark', branch = 'main' }
  use 'kkga/vim-envy'
  use "rebelot/kanagawa.nvim"
  use 'jonathanfilip/vim-lucius'
  use {'kaicataldo/material.vim', branch = 'main' }
  use 'savq/melange'
  use 'ishan9299/modus-theme-vim'
  use 'fxn/vim-monochrome'
  use "EdenEast/nightfox.nvim"
  use 'haishanh/night-owl.vim'
  use {'pbrisbin/vim-colors-off', branch = 'main' }
  use 'drewtempelmeyer/palenight.vim'
  use 'HenryNewcomer/vim-theme-papaya'
  use 'reedes/vim-colors-pencil'
  use 'matsuuu/pinkmare'
  use 'andreypopp/vim-colors-plain'
  use 'KKPMW/sacredforest-vim'
  use 'altercation/vim-colors-solarized'
  use 'lifepillar/vim-solarized8'
  use 'jacoborus/tender.vim'
  use {
    'ghifarit53/tokyonight-vim',
    config = function()
      -- night, storm
      vim.cmd([[ 
        let g:tokyonight_style = 'storm'
        let g:tokyonight_enable_italic = 1
      ]])
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
\ 'catppuccin'  : {
\                },
\ 'dracula'  : {
\                  'typeface': 'FuraCode Nerd Font Mono Light',
\                },
\ 'embark'  : {
\                },
\ 'kanagawa'  : {
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
\ 'nightfox'  : {
\                },
\ 'night-owl'  : {
\                },
\ 'off'  : {
\                  'typeface': 'Cascadia Code Regular',
\                },
\ 'palenight'  : {
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
]])
	end,
}
