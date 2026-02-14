return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		default_file_explorer = true,
	},
	-- Optional dependencies
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	lazy = false,
	config = function(_, opts)
		require("oil").setup(opts)
		vim.keymap.set("n", "<leader>oi", function()
			if vim.bo.filetype ~= "oil" then
				vim.cmd("Oil")
			else
				require("oil").close()
			end
		end)
	end,
}
