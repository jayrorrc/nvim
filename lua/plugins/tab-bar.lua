return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	opts = {
		animation = true,
		insert_at_start = true,
	},
	config = function()
		require("barbar").setup()
		-- Move to previous/next
		vim.keymap.set("n", "<S-Tab>", ":BufferPrevious<CR>", {})
		vim.keymap.set("n", "<Tab>", ":BufferNext<CR>", {})
		vim.keymap.set("n", "<leader>bc", ":BufferClose<CR>", {})
	end,
}
