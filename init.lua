vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.wrap = false
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.clipboard = "unnamedplus"
vim.o.title = true
vim.o.scrolloff = 10
vim.o.syntax = "ON"
vim.o.swapfile = false
vim.g.mapleader = " "
vim.o.smartindent = true
vim.o.mouse = ""
vim.o.colorcolumn = "80"

vim.keymap.set("n", "<leader>h", ":noh<CR>", { desc = "Clear search highlight" })                     -- clear search highlight
vim.keymap.set("n", "<leader>x", ":so %<CR>", { desc = "Shout out/ source" })                         -- shout out/source
vim.keymap.set("n", "<leader>bl", ":buffers <CR>", { desc = "List buffers" })                         -- list buffers
vim.keymap.set("n", "<leader>bn", ":bn <CR>", { desc = "Next buffer" })                               -- next buffer
vim.keymap.set("n", "<leader>bb", ":bp <CR>", { desc = "Previous buffer" })                           -- previous buffer
vim.keymap.set("n", "<leader>bd", ":bd! <cr>", { desc = "Delete buffer" })                            -- delete buffer
vim.keymap.set("n", "<leader>t", ":tabe ", { desc = "Open file in new tab" })                         -- open new file in new tab
vim.keymap.set("n", "<S-Tab>", "gt", { desc = "Next tab" })                                           -- next tab
vim.keymap.set("n", "<C-S-Tab>", "gT", { desc = "Previous tab" })                                     -- previous tab
vim.keymap.set("n", "<leader>so", ":set spell spelllang=en_us<CR>", { desc = "Turn spell check on" }) -- spell check on
vim.keymap.set("n", "<leader>sc", ":set nospell<CR>", { desc = "Turn spell check on" })               -- spell check off
vim.keymap.set("n", "<leader>mp", ":let &mp=''<left>", { desc = "Shortcut to define make" })          -- define make program
vim.keymap.set("n", "<leader>me", ":make<CR>", { desc = "Run make" })                                 -- run make program
vim.keymap.set("n", "<leader>wt", ":set tw=79<CR>", { desc = "Set text witdth to 79 chars" })         -- set text width to 79 chars
vim.keymap.set("n", "<leader>wn", ":setlocal nowrap<CR>", { desc = "Turn off line wrap" })            -- no line wrap
vim.keymap.set("n", "<leader>wo", ":setlocal wrap<CR>", { desc = "Turn on line wrap" })               -- line wrap on
vim.keymap.set("n", "<leader>nw", ":setlocal nowrap<CR>", { desc = "Turn off line wrap" })            -- no line wrap

vim.cmd("colorscheme retrobox")

require("mason").setup()
require("mason-lspconfig").setup()

require("gitsigns").setup()

require("config.lsp")()
require("config.completion")()

vim.diagnostic.config({
	virtual_text = true,
	signs = true,            -- show signs in the signcolumn
	underline = true,        -- underline problematic text
	update_in_insert = false, -- don't update while in insert mode
})
