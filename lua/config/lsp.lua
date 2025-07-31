return function()
	require("lspconfig").lua_ls.setup {}
	require("lspconfig").clangd.setup {}
	require("lspconfig").pyright.setup {}

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
							vim.lsp.buf.format({ bufnr = args.buf, id = client.id})
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
