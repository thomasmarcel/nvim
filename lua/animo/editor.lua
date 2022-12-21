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
use {
	"folke/zen-mode.nvim",
	config = function()
		require("zen-mode").setup {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		}
	end
}

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
	end,
}