return function()
	local cmp = require("blink.cmp")

	cmp.setup({
		-- basic config
		sources = {

			default = { 'lsp', 'buffer' },

		},
		-- appearance
		appearance = {

			border = "single",
			scrollbar = true,
			nerd_font_variant = "mono",

		},

		-- keybindings
		keymap = {

			preset = "default",
			['<C-b>'] = { 'scroll_documentation_down' },
			['<C-f>'] = { 'scroll_documentation_up' },

			['<C-Space>'] = { 'show' },
			['<C-e>'] = { 'hide' },
			['<Esc>'] = { 'hide' },

			['<CR>'] = { 'accept' },

			['<C-Enter>'] = { 'select_and_accept' },

		}

	})

	-- LSP completion capabilities
	local capabilities = vim.lsp.protocol.make_client_capabilities()
	-- for snippets maybe
	capabilities.textDocument.completion.completionItem.snippetSupport = true
end
