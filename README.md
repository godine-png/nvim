# nvim
My neovim config

## Requirements

Plugins live within `/pack/nvim/start/`

### Structure

```bash
├── init.lua
├── LICENSE
├── lua
│   └── config
│       ├── completion.lua
│       └── lsp.lua
├── pack
│   └── nvim
│       └── start
│           ├── blink.cmp
│           ├── gitsigns.nvim
│           ├── lazydev.nvim
│           ├── mason-lspconfig.nvim
│           ├── mason.nvim
│           ├── nvim-lspconfig
│           ├── nvim-tree.lua
│           ├── render-markdown.nvim
│           └── typst-preview.nvim
└── README.md
```

### LSP

- Install [Neovim-lspconfig](https://github.com/neovim/nvim-lspconfig.git)
    - Lua uses [Lazydev.nvim](https://github.com/folke/lazydev.nvim.git)
    - Typst uses [Tinymist](https://github.com/Myriad-Dreamin/tinymist.git)

- Using [Mason.nvim](https://github.com/mason-org/mason.nvim.git) for managing lsp, linters, etc.
- Include [mason-lspconfig.nvim](https://github.com/mason-org/mason-lspconfig.nvim) for mason and lsp configs

- Ensure to have the following in your path, so far:
    - clangd
    - lua-language-server
    - Tinymist

### Autocomplete

- Install [blink.cmp](https://github.com/Saghen/blink.cmp.git)

### Extras

- [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- [nvim-Tree](https://github.com/nvim-tree/nvim-tree.lua)
- [render-markdown](https://github.com/MeanderingProgrammer/render-markdown.nvim)
