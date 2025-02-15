require("monokai-pro").setup({
	terminal_colors = true,
	filter = "pro",
	background_clear = {},
	plugins = {
		indent_blankline = {
			context_highlight = "default", -- default | pro
			context_start_underline = false,
		},
	},
})
vim.cmd([[colorscheme monokai-pro]])
