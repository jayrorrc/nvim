return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim",
			"saifulapm/neotree-file-nesting-config",
		},
		opts = {
			hide_root_node = true,
			retain_hidden_root_indent = true,
			filesystem = {
				follow_current_file = { enabled = true },
				use_libuv_file_watcher = true,
				filtered_items = {
					never_show = {
						".DS_Store",
					},
				},
				default_component_configs = {
					indent = {
						with_expanders = true,
						expander_collapsed = "",
						expander_expanded = "",
					},
				},
			},
		},
		config = function()
			require("neo-tree").setup({
				nesting_rules = require("neotree-file-nesting-config").nesting_rules,
				enable_git_status = true,
				default_component_configs = {
					name = {
						trailing_slash = false,
						use_git_status_colors = true,
						highlight = "NeoTreeFileName",
					},
					git_status = {
						symbols = {
							-- Change type
							added = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
							modified = "", -- or "", but this is redundant info if you use git_status_colors on the name
							deleted = "✖", -- this can only be used in the git_status source
							renamed = "󰁕", -- this can only be used in the git_status source
							-- Status type
							untracked = "",
							ignored = "",
							unstaged = "󰄱",
							staged = "",
							conflict = "",
						},
					},
				},
				git_status = {
					window = {
						position = "float",
						mappings = {
							["A"] = "git_add_all",
							["gu"] = "git_unstage_file",
							["ga"] = "git_add_file",
							["gr"] = "git_revert_file",
							["gc"] = "git_commit",
							["gp"] = "git_push",
							["gg"] = "git_commit_and_push",
							["o"] = { "show_help", nowait = false, config = { title = "Order by", prefix_key = "o" } },
						},
					},
				},
			})

			vim.keymap.set("n", "f", ":Neotree filesystem reveal left<CR>", {})
			vim.keymap.set("n", "<leader>ft", ":Neotree toggle<CR>", {})
			vim.keymap.set("n", "<leader>fo", ":Neotree buffers<CR>", {})
			vim.keymap.set("n", "<leader>fs", ":Neotree git_status<CR>", {})
		end,
	},
	{
		"stevearc/oil.nvim",
		opts = {},
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local oil = require("oil")
			oil.setup()

			vim.keymap.set("n", "-", oil.toggle_float, {})
		end,
	},
}
