return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			local gitsigns = require("gitsigns")
			gitsigns.setup()

			vim.keymap.set("n", "<leader>gp", gitsigns.preview_hunk, {})
			vim.keymap.set("n", "<leader>gt", gitsigns.toggle_current_line_blame, {})
			vim.keymap.set("n", "<leader>gs", gitsigns.stage_hunk, {})
			vim.keymap.set("n", "<leader>gs", gitsigns.stage_hunk, {})
			vim.keymap.set("n", "<leader>gr", gitsigns.reset_hunk, {})
			vim.keymap.set("n", "<leader>gS", gitsigns.stage_buffer, {})
			vim.keymap.set("n", "<leader>gR", gitsigns.reset_buffer, {})
		end,
	},
	{
		"tpope/vim-fugitive",
	},
}
