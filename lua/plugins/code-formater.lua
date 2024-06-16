return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prittier,
        null_ls.builtins.formatting.google_java_format,
				null_ls.builtins.diagnostics.eslint_d,
				null_ls.builtins.diagnostics.checkstyle.with({
					extra_args = { "-c", "/google_checks.xml" }, -- or "/sun_checks.xml" or path to self written rules
				}),
			},
		})

		vim.keymap.set("n", "<leader>fc", vim.lsp.buf.format, {})
	end,
}
