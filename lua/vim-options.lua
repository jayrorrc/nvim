vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.keymap.set("n", "<leader>tp", ":tabn<CR>", {})
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", {})
