return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			window = {
				position = "right",
			},
			filesystem = {
				group_empty_dirs = true,
				scan_mode = "deep",
				follow_current_file = {
					enabled = true,
					leave_dirs_open = false,
				},
				filtered_items = {
					visible = true,
					show_hidden_count = true,
					hide_dotfiles = false,
					hide_gitignored = true,
					never_show = {
						".git",
						".DS_Store",
						"thumbs.db",
					},
				},
			},
			default_component_configs = {
				git_status = {
					symbols = {
						added = "++",
						modified = "+",
						deleted = "-",
						renamed = "R",
						untracked = "?",
						ignored = "I",
						unstaged = "",
						staged = "",
						conflict = "!",
					},
				},
			},
		})
		vim.keymap.set("n", "<leader>e", "<Cmd>Neotree toggle<CR>", { desc = "[f]ile [e]xplorer" })
	end,
}
