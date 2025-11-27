return {
	{ "nmac427/guess-indent.nvim" },
	{
		"stevearc/conform.nvim",
		opts = {
			notify_on_error = false,
			format_on_save = {
				timeout_ms = 2500,
				lsp_fallback = "fallback",
			},
			formatters = {
				ruff_fix = {
					stdin = true,
					args = {
						"check",
						"--fix",
						"--stdin-filename",
						"$FILENAME",
						"-",
					},
				},
			},
			formatters_by_ft = {
				["_"] = { "trim_whitespace" },
				go = { "goimports", "gofmt" },
				lua = { "stylua" },
				python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
				javascript = { "eslint_d", "prettier" },
				javascriptreact = { "eslint_d", "prettier" },
				typescript = { "eslint_d", "prettier" },
				typescriptreact = { "eslint_d", "prettier" },
			},
		},
	},
}
