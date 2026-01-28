return {
	"ray-x/go.nvim",
	dependencies = {
		"ray-x/guihua.lua",
		"neovim/nvim-lspconfig",
		"nvim-treesitter/nvim-treesitter",
	},
	opts = function()
		vim.keymap.set("n", "<leader>tt", "<Cmd>GoTest -n<CR>", { desc = "[t]est nearest" })
		vim.keymap.set("n", "<leader>tf", "<Cmd>GoTest -f<CR>", { desc = "[t]est whole file" })
		vim.keymap.set("n", "<leader>tc", "<Cmd>GoCoverage -p<CR>", { desc = "[t]est with [c]overage" })
		vim.keymap.set("n", "<leader>tr", "<Cmd>GoCoverage -R<CR>", { desc = "[t]est with [c]overage" })

		return {
			-- lsp_keymaps = false,
			-- other options
		}
	end,
	event = { "CmdlineEnter" },
	ft = { "go", "gomod" },
	build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
}
