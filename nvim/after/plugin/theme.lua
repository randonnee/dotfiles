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
	override = function(c)
		local hp = require("monokai-pro.color_helper")
		local common_fg = hp.lighten(c.sideBar.foreground, 30)
		return {
			SnacksPicker = { bg = c.editor.background, fg = common_fg },
			SnacksPickerBorder = { bg = c.editor.background, fg = c.tab.unfocusedActiveBorder },
			SnacksPickerTree = { fg = c.editorLineNumber.foreground },
			NonText = { fg = c.base.dimmed3 }, -- not sure if this should be broken into all hl groups importing NonText
		}
	end,
})
vim.cmd([[colorscheme monokai-pro]])
