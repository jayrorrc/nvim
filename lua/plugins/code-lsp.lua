return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
			registries = {
				"github:nvim-java/mason-registry",
				"github:mason-org/mason-registry",
			},
		},
		-- config = function()
		-- 	require("mason").setup()
		-- end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
			-- handlers = {
			-- 	["jdtls"] = function()
			-- 		require("java").setup({
			-- 			ensure_installed = { "lua_ls", "cssls", "dockerls", "html", "jdtls", "jsonls", "tsserver" },
			-- 			automatic_installation = true,
			-- 		})
			-- 	end,
			-- },
		},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "cssls", "dockerls", "html", "jdtls", "jsonls", "tsserver" },
				automatic_installation = true,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.cssls.setup({
				capabilities = capabilities,
			})
			lspconfig.dockerls.setup({
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			lspconfig.jsonls.setup({
				capabilities = capabilities,
			})
			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})
		end,
	},
}
