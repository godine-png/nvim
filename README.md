# nvim
My neovim config

## Requirements

Plugins live within `/pack/nvim/start/`

### LSP

- Install [Neovim-lspconfig](https://github.com/neovim/nvim-lspconfig.git)
    - Lua uses [Lazydev.nvim](https://github.com/folke/lazydev.nvim.git)
    - Typst uses [Tinymist](https://github.com/Myriad-Dreamin/tinymist.git)

- Using [Mason.nvim](https://github.com/mason-org/mason.nvim.git) for managing lsp, linters, etc.
- Include [mason-lspconfig.nvim](https://github.com/mason-org/mason-lspconfig.nvim) for mason and lsp configs

- Ensure to havein your path, so far:
    - clanged
    - lua-language-server
    - Tinymist

### Autocomplete

- Install [blink.cmp](https://github.com/Saghen/blink.cmp.git)

### Extras

- [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
