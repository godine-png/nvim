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

vim.keymap.set("n", "<leader>h", ":noh<CR>", { desc = "Clear search highlight" }) -- clear search highlight
vim.keymap.set("n", "<leader>x", ":so %<CR>", { desc = "Shout out/ source" })     -- shout out/source
vim.keymap.set("n", "<leader>bn", ":bn <CR>", { desc = "Next buffer" })           -- next buffer
vim.keymap.set("n", "<leader>bb", ":bp <CR>", { desc = "Previous buffer" })       -- previous buffer
vim.keymap.set("n", "<leader>bd", ":bd! <cr>", { desc = "Delete buffer" })        -- delete buffer
vim.keymap.set("n", "<leader>t", ":tabe ", { desc = "Open file in new tab" })     -- open new file in new tab
vim.keymap.set("n", "<S-Tab>", "gt", { desc = "Next tab" })                       -- next tab
vim.keymap.set("n", "<C-S-Tab>", "gT", { desc = "Previous tab" })                 -- previous tab


vim.cmd("colorscheme retrobox")

require("mason").setup()
require("mason-lspconfig").setup()

require("gitsigns").setup()

require("config.lsp")()
require("config.completion")()
