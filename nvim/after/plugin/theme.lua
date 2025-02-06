-- vim.o.background = "dark" -- or "light" for light mode
-- vim.cmd([[colorscheme gruvbox]])
require("monokai-pro").setup({
	terminal_colors = true,
	filter = "pro",
	plugins = {
		indent_blankline = {
			context_highlight = "default", -- default | pro
			context_start_underline = false,
		},
	},
})
vim.cmd([[colorscheme monokai-pro]])
