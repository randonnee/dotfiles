-- return { "ellisonleao/gruvbox.nvim", priority = 1000, config = true }
return {
	"loctvl842/monokai-pro.nvim",
	priority = 1000,
	config = function()
		require("monokai-pro").setup({
			terminal_colors = true,
			filter = "pro",
			background_clear = {},
			plugins = {
				indent_blankline = {
					context_highlight = "default",
					context_start_underline = false,
				},
			},
			override = function(c)
				local colors = require("monokai-pro.colors")
				local common_fg = colors.lighten(c.sideBar.foreground, 30)
				return {
					SnacksPicker = { bg = c.editor.background, fg = common_fg },
					SnacksPickerBorder = { bg = c.editor.background, fg = c.tab.unfocusedActiveBorder },
					SnacksPickerTree = { fg = c.editorLineNumber.foreground },
					NonText = { fg = c.base.dimmed3 },
				}
			end,
		})
		vim.cmd([[colorscheme monokai-pro]])
	end,
}
