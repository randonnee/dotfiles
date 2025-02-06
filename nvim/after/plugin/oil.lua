require("oil").setup({
	default_file_explorer = true,
})
vim.keymap.set("n", "<leader>oi", function()
	if vim.bo.filetype ~= "oil" then
		-- vim.cmd("leftabove vsplit")
		vim.cmd("Oil")
	else
		require("oil").close()
	end
end)
