return {
	{
		"klen/nvim-test",
		config = function()
			require("nvim-test").setup({
				termOpts = {
					direction = "horizontal",
					go_back = true,
					height = 12,
				},
			})
			vim.keymap.set("n", "<leader>t", ":TestNearest<CR>", {})
			vim.keymap.set("n", "<leader>T", ":TestLast<CR>", {})
			vim.keymap.set("n", "<leader>tt", ":TestSuite<CR>", {})
		end,
	},
}
