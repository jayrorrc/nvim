return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim",
		},
		config = function()
			vim.keymap.set("n", "t", ":Neotree filesystem reveal left<CR>", {})
			vim.keymap.set("n", "<leader>to", ":Neotree buffers<CR>", {})
			vim.keymap.set("n", "<leader>ts", ":Neotree git_status<CR>", {})
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
