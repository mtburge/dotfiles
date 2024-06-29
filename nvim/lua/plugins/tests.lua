return {
	{
		"klen/nvim-test",
		config = function()
			require("nvim-test").setup({
				termOpts = {
					direction = "float",
				},
			})
			vim.keymap.set("n", "<leader>t", ":TestNearest<CR>", {})
			vim.keymap.set("n", "<leader>T", ":TestSuite<CR>", {})
		end,
	},
}
