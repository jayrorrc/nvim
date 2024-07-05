vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.cmd("set number")
vim.cmd("set relativenumber")

vim.cmd('inoremap <C-v> <ESC>"+pa')
vim.cmd('vnoremap <C-c> "+y')
vim.cmd('vnoremap <C-d> "+d')

vim.cmd("set list")
vim.cmd("set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<")
