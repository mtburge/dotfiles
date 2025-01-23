return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = {
			ensure_installed = {
				"bash",
				"c",
				"html",
				"lua",
				"luadoc",
				"markdown",
				"vim",
				"vimdoc",
				"hcl",
				"terraform",
				"python",
				"go",
				"typescript",
				"javascript",
				"html",
				"json",
				"yaml",
				"regex",
				"dockerfile",
			},
			auto_install = true,
			highlight = {
				enable = true,
			},
			indent = { enable = true },
		},
		config = function(_, opts)
			require("nvim-treesitter.configs").setup(opts)
		end,
	},
}
