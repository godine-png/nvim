return function()
	-- define LSP capabilities
	local capabilities = vim.lsp.protocol.make_client_capabilities()
	-- for snippets maybe
	capabilities.textDocument.completion.completionItem.snippetSupport = true

	-- lspconfig and cmp setup
	require("lspconfig").lua_ls.setup {
		capabilities = capabilities,
	}
	require("lspconfig").clangd.setup {
		capabilities = capabilities,
	}
	require("lspconfig").pyright.setup {
		capabilities = capabilities,
	}
	require("lspconfig").tinymist.setup {
		capabilities = capabilities,
		settings = {
			formatterMode = "typestyle",
			semanticTokens = "disable",
		},
	}

	vim.api.nvim_create_autocmd('LspAttach', {
		callback = function(args)
			local client = vim.lsp.get_client_by_id(args.data.client_id)
			if not client then return end

			---@diagnostic disable-next-line: missing-parameter
			if client.supports_method('textDocument/formatting', 0) then
				-- Format current buffer on save
				vim.api.nvim_create_autocmd('BufWritePre', {
					buffer = args.buf,
					callback = function()
						vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
					end,
				})
			end
		end,
	})

	vim.api.nvim_create_autocmd("FileType", {
		pattern = "lua",
		callback = function()
			require("lazydev").setup {
				library = {
					{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
				},
			}
		end,
	})
end
