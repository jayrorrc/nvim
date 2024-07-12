return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
      {
        "agoodshort/telescope-git-submodules.nvim",
        dependencies = { "akinsho/toggleterm.nvim" },
      },
    },
    config = function()
      require("telescope").setup({
        defaults = {
          path_display = { "smart" },
        },
      })

      require("telescope").load_extension("fzf")
      require("telescope").load_extension("git_submodules")
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
    end,
  },
}
