return function()
    -- Define LSP capabilities once
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true

    -- Use mason-lspconfig to set up all installed servers
    require("mason-lspconfig").setup({
        -- This list will automatically install the servers if they are not found.
        -- Use the names of the servers as they appear in Mason.
        ensure_installed = {
            "lua_ls",
            "clangd",
            "ruff",
            "tinymist",
            "ts_ls",
            "eslint",
            "cmake",
        },
    })

    -- Define custom settings for each LSP server
    -- mason-lspconfig will call this function for each server that is installed
    require("mason-lspconfig").setup {
        -- Default handler for servers with no special settings
        function(server_name)
            require("lspconfig")[server_name].setup({
                capabilities = capabilities,
            })
        end,

        -- Custom handler for the lua_ls server
        ["lua_ls"] = function()
            require("lspconfig").lua_ls.setup {
                capabilities = capabilities,
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" },
                        },
                    },
                },
            }
        end,

        -- Custom handler for the tinymist server
        ["tinymist"] = function()
            require("lspconfig").tinymist.setup {
                capabilities = capabilities,
                settings = {
                    formatterMode = "typestyle",
                    semanticTokens = "disable",
                },
            }
        end,
    }

    -- Autocommand for formatting on save
    vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
            local client = vim.lsp.get_client_by_id(args.data.client_id)
            if not client then return end

            if client.supports_method('textDocument/formatting', 0) then
                vim.api.nvim_create_autocmd('BufWritePre', {
                    buffer = args.buf,
                    callback = function()
                        vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
                    end,
                })
            end
        end,
    })

    -- Lazydev autocommand
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
