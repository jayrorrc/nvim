return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>ft", ":Neotree filesystem reveal left<CR>", {})
		vim.keymap.set("n", "<leader>fo", ":Neotree buffers<CR>", {})
		vim.keymap.set("n", "<leader>fs", ":Neotree git_status<CR>", {})
	end,
}
