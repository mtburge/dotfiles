return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			component_separators = { left = "", right = "" },
			theme = "catppuccin-mocha",
			icons_enabled = true,
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch" },
			lualine_c = { "buffers" },
			lualine_x = { "diff", "location", "filetype", "filesize" },
			lualine_y = { "diagnostics" },
			lualine_z = {},
		},
	},
}
