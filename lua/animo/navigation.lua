return {
    definitions = function(use)
-- netrw navigation
use("tpope/vim-vinegar")

-- Fuzzy finder
use({ "junegunn/fzf", run = "./install --bin" })
use({
	"ibhagwan/fzf-lua",
	-- optional for icon support
	requires = { "kyazdani42/nvim-web-devicons" },
})

use({
	"goolord/alpha-nvim",
	requires = { "kyazdani42/nvim-web-devicons" },
	config = function()
		require("alpha").setup(require("alpha.themes.startify").config)
	end,
})

vim.api.nvim_set_keymap("n", "<c-P>", "<cmd>lua require('fzf-lua').files()<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap(
	"n",
	"<c-F>",
	"<cmd>lua require('fzf-lua').grep_project()<CR>",
	{ noremap = true, silent = true }
)
	end,
}
