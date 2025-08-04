vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.wrap = false
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.clipboard = "unnamedplus"
vim.o.title = true
vim.o.syntax = "ON"
vim.o.swapfile = false
vim.g.mapleader = " "
vim.o.smartindent = true

vim.keymap.set("n", "<leader>h", ":noh<CR>")   -- clear search highlight
vim.keymap.set("n", "<leader>x", ":so %<CR>")  -- shout out/source
vim.keymap.set("n", "<leader>bn", ":bn <CR>")  -- next buffer
vim.keymap.set("n", "<leader>bb", ":bp <CR>")  -- previous buffer
vim.keymap.set("n", "<leader>bd", ":bd! <cr>") -- delete buffer

vim.cmd("colorscheme retrobox")

require("config.lsp")()
require("config.completion")()
