return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			event = { "BurReadPre", "BufNewFile" },
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform will run multiple formatters sequentially
				javascript = { "prettierd", "prettier", stop_after_first = true },
				json = { "prettierd", "prettier", stop_after_first = true },
				php = { "pint", "php_cs_fixer" },
				blade = { "blade-formatter" },
			},
		})

		vim.keymap.set("n", "<leader>fm", function()
			require("conform").format({ async = true, lsp_fallback = true })
		end, { desc = "General Format file" })
	end,
}
