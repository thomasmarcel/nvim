return {
    definitions = function(use)

        use "tpope/vim-sensible"
        -- Close brackets
        use({
            "windwp/nvim-autopairs",
            config = function()
                require("nvim-autopairs").setup({})
            end,
        })

        -- Show hexadecimal colors
        use({
            "norcalli/nvim-colorizer.lua",
            config = function()
                require('colorizer').setup()
            end
        })

        use {
            'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons',
            config = function()
                vim.opt.termguicolors = true
                require("bufferline").setup {}
            end
        }

        -- Zen mode
        -- use {
        --     "folke/zen-mode.nvim",
        --     config = function()
        --         require("zen-mode").setup {
        --             -- your configuration comes here
        --             -- or leave it empty to use the default settings
        --             -- refer to the configuration section below
        --         }
        --     end
        -- }

        use({
            "windwp/nvim-ts-autotag",
            config = function()
                require('nvim-ts-autotag').setup()
            end
        })

        -- Icons
        use {
            "kyazdani42/nvim-web-devicons",
            config = function()
                require 'nvim-web-devicons'.setup {
                    -- your personnal icons can go here (to override)
                    -- you can specify color or cterm_color instead of specifying both of them
                    -- DevIcon will be appended to `name`
                    override = {
                        zsh = {
                            icon = "",
                            color = "#428850",
                            cterm_color = "65",
                            name = "Zsh"
                        }
                    };
                    -- globally enable default icons (default to false)
                    -- will get overriden by `get_icons` option
                    default = true;
                }
            end
        }

        use({
            "ThePrimeagen/refactoring.nvim",
            requires = {
                { "nvim-lua/plenary.nvim" },
                { "nvim-treesitter/nvim-treesitter" },
            },
        })

        use {
            "phaazon/mind.nvim",
            config = function()
                require 'mind'.setup()
            end
        }

        use({
            'numToStr/Comment.nvim',
            config = function()
                require('Comment').setup()
            end
        })

        use {
            'feline-nvim/feline.nvim',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true },
            config = function()
                require('feline').setup()
            end
        }
        use {
            'lewis6991/gitsigns.nvim',
            config = function()
                require('gitsigns').setup()
            end
        }
        use {
            "folke/trouble.nvim",
            requires = "nvim-tree/nvim-web-devicons",
            config = function()
                require("trouble").setup {} -- no need to specify any options
            end
        }

        use {
            "folke/which-key.nvim",
            config = function()
                vim.o.timeout = true
                vim.o.timeoutlen = 300
                require("which-key").setup {
                    -- your configuration comes here
                    -- or leave it empty to use the default settings
                    -- refer to the configuration section below
                }
            end
        }

        use {
            "EtiamNullam/deferred-clipboard.nvim",
            config = function()
                require("deferred-clipboard").setup({
                    fallback = 'unnamedplus', -- or your preferred setting for clipboard
                    lazy = true,
                })
            end
        }
    end,
}
