return {
    definitions = function(use)
use({
	"zbirenbaum/copilot-cmp",
	module = "copilot_cmp",
})
use({
 "github/copilot.vim"
})
use({
	"zbirenbaum/copilot.lua",
	requires = { "github/copilot.vim" },
	event = { "VimEnter" },
	config = function()
		vim.defer_fn(function()
			require("copilot").setup()
		end, 100)
	end,
})

vim.g.copilot_node_command = "~/Library/Caches/fnm_multishells/61223_1655150924690/bin/node"
	end,
}
