--linenumbers, show relative numbers, highlight current line
vim.cmd("set signcolumn=auto")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("se cursorline")
vim.cmd("set scrolloff=15")

--remaps
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pd", vim.cmd.Ex)