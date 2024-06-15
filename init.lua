vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  { "rebelot/kanagawa.nvim", lazy = false, name="kanagawa", priority=1000 },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = {
      {'nvim-lua/plenary.nvim'},
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    }
  },
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim",
    }
  }
}

local opts = {}

require("lazy").setup(plugins, opts)

require("kanagawa").setup()
vim.cmd.colorscheme "kanagawa"

require('telescope').load_extension('fzf')
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

local configs = require("nvim-treesitter.configs")

configs.setup({
  ensure_installed = { "lua", "javascript", "html", "css", "scss",  "java" },
  sync_install = false,
  highlight = { enable = true },
  indent = { enable = true },  
})

vim.keymap.set('n', '<leader>t', ":Neotree filesystem reveal left<CR>", {})



