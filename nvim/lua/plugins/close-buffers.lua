return {
	"Asheq/close-buffers.vim",
	config = function()
		vim.keymap.set("n", "<Leader>bo", "<CMD>:Bdelete other<CR>", { desc = "Close other buffers" })
		vim.keymap.set("n", "<Leader>ba", "<CMD>:Bdelete all<CR>", { desc = "Close all buffers" })
	end,
}
