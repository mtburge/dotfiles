return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			local tf_root_markers = { ".tfroot", ".terraform", ".git" }

			vim.lsp.config("terraformls", {
				root_markers = tf_root_markers,
			})
			vim.lsp.config("tflint", {
				root_markers = tf_root_markers,
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"gopls",
				"terraformls",
				"tflint",
				"docker_language_server",
				"ts_ls",
				"html",
				"cssls",
				"tailwindcss",
				"lua_ls",
				"pyright",
				"eslint",
			},
		},
		dependencies = {
			{
				"williamboman/mason.nvim",
				opts = {
					ui = {
						icons = {
							package_installed = "✓",
							package_pending = "➜",
							package_uninstalled = "✗",
						},
					},
				},
			},
			"neovim/nvim-lspconfig",
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				"prettier",
				"stylua",
				"ruff",
				"eslint_d",
				"tflint",
				"tfsec",
				"golangci-lint",
			},
		},
		dependencies = {
			"williamboman/mason.nvim",
		},
	},
}
