--set indent spacing
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

--linenumbers, show relative numbers, highlight current line
vim.cmd("set signcolumn=auto")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("se cursorline")
vim.cmd("set scrolloff=15")

--lsp suggestions and width
vim.cmd("set pumheight=8")
vim.cmd("set pumwidth=2")

--remaps
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pd", vim.cmd.Ex)
vim.keymap.set("n", "<leader>hi", ":set hlsearch!<CR>")
vim.keymap.set("n", "<leader>sp", ":sp<CR>")
vim.keymap.set("n", "<leader>vs", ":vs<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>s", ":w<CR>")
