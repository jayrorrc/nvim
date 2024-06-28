return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},
		config = function()
			require("telescope").setup({
				defaults = {
					path_display = { "smart" },
				},
			})

			require("telescope").load_extension("fzf")

			local builtin = require("telescope.builtin")

			--vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
			--vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>sb", builtin.buffers, {})
			vim.keymap.set("n", "<leader>sh", builtin.help_tags, {})
			vim.keymap.set("n", "<leader>ss", builtin.git_status, {})
			vim.keymap.set("n", "<leader>sb", builtin.git_branches, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
	{
		"molecule-man/telescope-menufacture",
		config = function()
			require("telescope").load_extension("menufacture")

			local menufacture = require("telescope").extensions.menufacture

			vim.keymap.set("n", "<leader>sf", menufacture.find_files)
			vim.keymap.set("n", "<leader>sg", menufacture.live_grep)
			vim.keymap.set("n", "<leader>sw", menufacture.grep_string)
			vim.keymap.set("n", "<leader>so", menufacture.oldfiles)
		end,
	},
}
