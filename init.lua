vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.wrap = false
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.clipboard = "unnamedplus"
vim.o.swapfile = false
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>h", ":noh<CR>")
vim.keymap.set("n", "<leader>x", ":so %<CR>")
vim.keymap.set("n", "<leader>bn", ":bn <CR>")
vim.keymap.set("n", "<leader>bb", ":bp <CR>")

vim.cmd("colorscheme retrobox")

require("config.lsp")()
require("config.completion")()
