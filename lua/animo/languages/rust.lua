return {
    definitions = function(use)
use("rust-lang/rust.vim")

vim.g.rustfmt_autosave = 1
vim.g.rust_clip_command = "pbcopy"
	end,
}
