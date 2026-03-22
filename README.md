# config.nvim

A modern Neovim configuration using lazy.nvim as the plugin manager. Heavily inspired by [TJ DeVries's config](https://github.com/tjdevries/config.nvim/).

## Overview

This config provides a full-featured Neovim setup with:
- **LSP support** for multiple languages (Go, Rust, Python, JavaScript/TypeScript, etc.)
- **Code completion** via nvim-cmp with LSP and snippet integration
- **Debugging** with DAP (Debug Adapter Protocol) for Go, Elixir, and Rust
- **Fuzzy finding** with Telescope
- **Code formatting** on save using conform.nvim
- **File browsing** with oil.nvim
- **Syntax highlighting** via Tree-sitter

## Prerequisites

- Neovim 0.10+ (uses nightly features like `vim.lsp.config` and `vim.snippet`)
- Git (for cloning plugins)
- Rust toolchain (for rust-analyzer and other Rust-based tools)

## Installation

1. Clone this repository to your Neovim config directory:
   ```bash
   git clone https://github.com/lumo03/config.nvim.git ~/.config/nvim
   ```

2. Start Neovim. lazy.nvim will automatically install all plugins.

3. Run `:Mason` to verify/install language servers and tools.

4. Run `:LspInfo` to check active LSP servers.

## Plugins

### Core Plugins
- **lazy.nvim**: Plugin manager
- **nvim-lspconfig**: LSP configuration
- **mason.nvim**: Tool installer for LSP servers, linters, formatters
- **nvim-cmp**: Completion engine
- **LuaSnip**: Snippet engine
- **conform.nvim**: Code formatter
- **telescope.nvim**: Fuzzy finder
- **nvim-treesitter**: Syntax parsing
- **oil.nvim**: File browser
- **nvim-dap**: Debug Adapter Protocol

### Language Support
Supports 20+ languages including:
- Go (gopls, delve debugger)
- Rust (rust-analyzer with cargo features enabled, rustfmt)
- Python (pyright, black, isort)
- JavaScript/TypeScript (ts_ls, prettier)
- Lua (lua_ls, stylua)
- Emmet (emmet_language_server for HTML, CSS, JS, TS, React, Vue, Rust)
- And more (see `lua/custom/plugins/lsp.lua`)

## Key Features

- **Auto-formatting** on save
- **Inlay hints** toggle (`<space>tt`)
- **Debugging UI** with breakpoints and variable inspection
- **File navigation** with Telescope (find files, grep, etc.)
- **Snippet expansion** with LuaSnip
- **Virtual diagnostics** with lsp_lines

## Keymaps

### Leader Key
- Leader: `,`

### Navigation
- `<C-h/j/k/l>`: Move between splits
- `<space>fd`: Find files
- `<space>fg`: Live grep
- `<space>ft`: Git files

### LSP
- `gd`: Go to definition
- `gr`: Go to references
- `K`: Hover documentation
- `<space>cr`: Rename symbol
- `<space>ca`: Code actions

### Debugging
- `<space>b`: Toggle breakpoint
- `<F1>`: Continue
- `<F2>`: Step into
- `<F3>`: Step over

### Other
- `<leader>x`: Execute current line as Lua
- `<space>-`: Open file browser

## Configuration Structure

- `init.lua`: Main entry point
- `lua/custom/`: Custom modules
  - `plugins/`: Plugin configurations
  - `snippets/`: Language-specific snippets
- `plugin/keymaps.lua`: Global keymaps

## Customization

Edit files in `lua/custom/` to modify behavior:
- Add new plugins in `lua/custom/plugins/`
- Customize keymaps in `plugin/keymaps.lua`
- Add snippets in `lua/custom/snippets/`

## Troubleshooting

- If plugins don't load: Run `:Lazy sync`
- If LSP servers missing: Run `:Mason` and install required tools
- Check `:LspInfo` for active servers
- Use `:checkhealth` for diagnostics
