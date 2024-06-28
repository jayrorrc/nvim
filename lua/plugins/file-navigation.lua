return {
	"folke/flash.nvim",
	event = "VeryLazy",
	---@diagnostic disable-next-line: undefined-doc-name
	---@type Flash.Config
	opts = {},
  -- stylua: ignore
  keys = {
    {
      "<leader>ns",
      mode = { "n", "x", "o" },
      function()
        require("flash").jump()
      end,
      desc = "Flash",
    },
    {
      "<leader>nt",
      mode = { "n", "x", "o" },
      function()
        require("flash").treesitter()
      end,
      desc = "Flash Treesitter",
    },
    {
      "<leader>nr",
      mode = "o",
      function()
        require("flash").remote()
      end,
      desc = "Remote Flash",
    },
    --{
    --  "<leader>nT",
    --  mode = { "o", "x" },
    --  function()
    --    require("flash").treesitter_search()
    --  end,
    --  desc = "Treesitter Search",
    --},
    --{
    --  "<C-s>",
    --  mode = { "c" },
    --  function()
    --    require("flash").toggle()
    --  end,
    --  desc = "Toggle Flash Search",
    --},
  },
	config = function()
		require("flash").setup({
			modes = {
				search = {
					enabled = true,
				},
				char = {
					keys = { ";", "," },
				},
			},
		})
	end,
}
