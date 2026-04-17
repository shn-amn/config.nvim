# Gemini Context: Neovim Configuration (kickstart.nvim)

This directory contains a personalized Neovim configuration based on the [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) project. It is structured to be modular, readable, and highly functional.

## Project Overview

*   **Entry Point**: `init.lua` contains the core settings, options, and plugin manager setup.
*   **Plugin Manager**: Uses [lazy.nvim](https://github.com/folke/lazy.nvim) for managing plugins.
*   **Modular Design**:
    *   `lua/kickstart/plugins/`: Standard optional plugins provided by kickstart (debug, lint, autopairs, etc.).
    *   `lua/custom/plugins/`: User-specific plugin configurations (Scala/Metals, ToggleTerm, NvimTree, etc.).
*   **Key Technologies**:
    *   **LSP**: Managed via `mason.nvim`, `mason-lspconfig.nvim`, and `nvim-lspconfig`.
    *   **Fuzzy Finding**: Powered by [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim).
    *   **Syntax Highlighting**: Provided by [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter).
    *   **UI/UX**: Custom colorscheme `mostly-monochrome` (local dev), `mini.nvim` for statuslines and utilities.

## Core Commands & Usage

### Neovim Commands
*   `:Lazy`: Open the plugin manager UI.
*   `:Mason`: Open the tool manager (LSP/DAP/Linter/Formatter).
*   `:checkhealth`: Run diagnostic checks on the configuration and dependencies.
*   `:Tutor`: Start the Neovim tutor for basics.

### Keybindings (Default Leader: `<space>`)
*   `<leader>sh`: [S]earch [H]elp
*   `<leader>sf`: [S]earch [F]iles (Telescope)
*   `<leader>sg`: [S]earch by [G]rep (Telescope)
*   `<leader>e`: Toggle file explorer ([e]xplorer - configured in `neo-tree` or `nvim-tree`)
*   `<c-\>`: Toggle floating terminal (ToggleTerm)
*   `<leader>t1/2/3`: Specific terminal instances

## Development Conventions

### Adding Plugins
1.  Create a new `.lua` file in `lua/custom/plugins/`.
2.  Return a `lazy.nvim` plugin specification table.
3.  Ensure the `import = 'custom.plugins'` line is active in `init.lua`.

### Configuration Principles
*   **Single File vs. Modular**: While `kickstart.nvim` defaults to a single file, this setup uses the modular `import` feature of `lazy.nvim`.
*   **Documentation**: Heavily commented to explain the purpose of each setting and plugin.
*   **Formatting**: Lua code should follow the conventions defined in `.stylua.toml`.

## External Dependencies
*   **Required**: `git`, `make`, `unzip`, C Compiler (`gcc`).
*   **Tools**: `ripgrep` (`rg`), `fd`.
*   **Fonts**: A [Nerd Font](https://www.nerdfonts.com/) is recommended for icons (enabled via `vim.g.have_nerd_font = true`).
