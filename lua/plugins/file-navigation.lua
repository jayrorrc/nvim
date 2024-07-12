return {
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@diagnostic disable-next-line: undefined-doc-name
  ---@type Flash.Config
  opts = {},
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
