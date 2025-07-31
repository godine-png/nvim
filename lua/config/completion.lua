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

	})

	-- LSP completion capabilities
	local capabilities = vim.lsp.protocol.make_client_capabilities()
	-- for snippets maybe
	capabilities.textDocument.completion.completionItem.snippetSupport = true
end
