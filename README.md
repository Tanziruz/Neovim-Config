# Tanziruz's Neovim Config

A personal, modular Neovim configuration built on top of [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim). It keeps the readable, single-entry-point philosophy of kickstart while extending it with a curated set of plugins for a modern editing experience.

## What Is This?

This is a ready-to-use Neovim configuration that provides:

- Full **LSP** support (autocompletion, go-to-definition, diagnostics, etc.)
- Beautiful **syntax highlighting** powered by Tree-sitter
- A slick **file explorer**, **fuzzy finder**, and **terminal integration**
- **Git** workflows directly inside Neovim
- Smart **auto-formatting** and **linting** on save
- A polished UI with tabs, status line, icons, and a dark theme

It is **not** a Neovim distribution — every line of configuration is readable and modifiable.

---

## Features & Plugins

### 🎨 Theme
| Plugin | Description |
|---|---|
| [neovim-ayu](https://github.com/Shatur/neovim-ayu) | The **ayu-dark** (mirage variant) colour scheme — a clean, dark theme |

### 🔍 Fuzzy Finder
| Plugin | Description |
|---|---|
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy-find files, grep across your project, search keymaps, LSP symbols, and more |
| [telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim) | Native `fzf` sorter for Telescope — faster fuzzy matching |
| [telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim) | Routes Neovim's `vim.ui.select` through Telescope |

**Key bindings:**

| Keys | Action |
|---|---|
| `<leader>sf` | Search files |
| `<leader>sg` | Live grep (search in project) |
| `<leader>sh` | Search help tags |
| `<leader>sd` | Search diagnostics |
| `<leader>sr` | Resume last search |
| `<leader><leader>` | Find open buffers |
| `<leader>/` | Fuzzy search in current buffer |

### 📁 File Explorer
| Plugin | Description |
|---|---|
| [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) | Sidebar file-system explorer with icon support |

Press `\` to toggle the file tree. Press `H` inside the tree to show/hide hidden files.

### 🧠 LSP & Language Support
| Plugin | Description |
|---|---|
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | Core LSP client configuration |
| [mason.nvim](https://github.com/mason-org/mason.nvim) | Portable package manager for LSP servers, linters, and formatters |
| [mason-lspconfig.nvim](https://github.com/mason-org/mason-lspconfig.nvim) | Bridges mason and nvim-lspconfig |
| [mason-tool-installer.nvim](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim) | Ensures required tools are always installed |
| [fidget.nvim](https://github.com/j-hui/fidget.nvim) | LSP progress notifications in the corner |

**Pre-configured language servers:**
- `lua_ls` — Lua
- `clangd` — C / C++
- `pyright` — Python
- `ts_ls` — TypeScript / JavaScript
- `tailwindcss` — Tailwind CSS

**LSP key bindings** (available when an LSP is attached):

| Keys | Action |
|---|---|
| `grd` | Go to definition |
| `grr` | Find references |
| `gri` | Go to implementation |
| `grt` | Go to type definition |
| `grn` | Rename symbol |
| `gra` | Code action |
| `grD` | Go to declaration |
| `gO` | Document symbols |
| `gW` | Workspace symbols |
| `<leader>th` | Toggle inlay hints |

### ✅ Autocompletion
| Plugin | Description |
|---|---|
| [blink.cmp](https://github.com/saghen/blink.cmp) | Fast, modern completion engine with LSP, path, and snippet sources |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip) | Snippet engine |

**Completion key bindings:**

| Keys | Action |
|---|---|
| `<CR>` | Accept completion |
| `<Tab>` / `<S-Tab>` | Select next / previous item |
| `<C-Space>` | Open completion menu |
| `<C-k>` | Toggle signature help |

### 🌳 Syntax Highlighting
| Plugin | Description |
|---|---|
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Accurate, fast syntax highlighting and indentation |

Pre-installed parsers: `bash`, `c`, `cpp`, `python`, `lua`, `html`, `markdown`, `vim`, `vimdoc`, and more.

### 💅 Formatting & Linting
| Plugin | Description |
|---|---|
| [conform.nvim](https://github.com/stevearc/conform.nvim) | Auto-format on save using the best available formatter |
| [nvim-lint](https://github.com/mfussenegger/nvim-lint) | Asynchronous linting engine |

**Formatters configured:**
- Lua → `stylua`
- JS / TS / JSX / TSX / CSS / HTML / JSON → `prettier`

Press `<leader>f` to manually format the current buffer at any time.

### 🔀 Git Integration
| Plugin | Description |
|---|---|
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git diff signs in the gutter (`+` add, `~` change, `_` delete) |
| [neogit](https://github.com/NeogitOrg/neogit) | Magit-inspired Git UI for Neovim |
| [diffview.nvim](https://github.com/sindrets/diffview.nvim) | Side-by-side diff viewer (used by neogit) |

Press `<leader>gg` to open the Neogit interface.

### 💻 Terminal
| Plugin | Description |
|---|---|
| [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) | Persistent, togglable terminal split |

Press `` <C-`> `` (Ctrl + backtick) to toggle the terminal at the bottom of the screen.

### 🗂 Buffer Tabs
| Plugin | Description |
|---|---|
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | VS Code-style tab bar for open buffers |

### 🛠 UI & Utilities
| Plugin | Description |
|---|---|
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Shows a popup of available key bindings as you type |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) | Highlights `TODO`, `FIXME`, `NOTE`, etc. in comments |
| [mini.nvim](https://github.com/nvim-mini/mini.nvim) | Suite of small utilities: text objects (`mini.ai`), surround (`mini.surround`), status line (`mini.statusline`) |
| [mini.icons](https://github.com/echasnovski/mini.icons) | File and directory icons |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | Visual indentation guides |
| [blink.indent](https://github.com/saghen/blink.indent) | Additional indent scope highlighting |
| [guess-indent.nvim](https://github.com/NMAC427/guess-indent.nvim) | Automatically detects and sets indentation style per file |
| [autoclose.nvim](https://github.com/m4xshen/autoclose.nvim) | Auto-closes brackets, quotes, and parentheses |
| [cord.nvim](https://github.com/vyfor/cord.nvim) | Discord Rich Presence integration |

---

## Built on kickstart.nvim

This configuration is built on top of **[kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)** by [TJ DeVries](https://github.com/tjdevries) and the Neovim community. kickstart.nvim is not a distribution — it is a well-documented, single-file starting point designed to teach you how Neovim configuration works.

> **Credits:** All credit for the base architecture, plugin management setup, LSP bootstrapping patterns, and educational comments goes to the kickstart.nvim project and its contributors. This repo extends it with additional plugins and personal customizations.

- kickstart.nvim repository: https://github.com/nvim-lua/kickstart.nvim
- Plugin manager used: [lazy.nvim](https://github.com/folke/lazy.nvim)

---

## Installation

### Requirements

Before installing, make sure you have:

- **Neovim >= 0.10** (latest stable recommended) — [install guide](https://github.com/neovim/neovim/blob/master/INSTALL.md)
- `git`, `make`, `gcc` / `clang`
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation) — used by Telescope for live grep
- [fd](https://github.com/sharkdp/fd#installation) — used by Telescope for file search
- A clipboard tool: `xclip` or `xsel` on Linux, `win32yank` on Windows
- *(Optional)* A [Nerd Font](https://www.nerdfonts.com/) for icons — then set `vim.g.have_nerd_font = true` in `init.lua`
- *(Optional)* `npm` for TypeScript/JavaScript language server; `python` for pyright

---

### Linux / macOS

```sh
git clone https://github.com/Tanziruz/Neovim-Config.git ~/.config/nvim
```

Then open Neovim:

```sh
nvim
```

[lazy.nvim](https://github.com/folke/lazy.nvim) will automatically install itself and all plugins on first launch. Use `:Lazy` to check plugin status.

<details><summary>Ubuntu / Debian — install dependencies first</summary>

```sh
sudo apt update
sudo apt install make gcc ripgrep fd-find tree-sitter-cli unzip git xclip neovim
```

</details>

<details><summary>Arch Linux</summary>

```sh
sudo pacman -S --noconfirm --needed gcc make git ripgrep fd tree-sitter-cli unzip neovim
```

</details>

<details><summary>Fedora</summary>

```sh
sudo dnf install -y gcc make git ripgrep fd-find tree-sitter-cli unzip neovim
```

</details>

---

### Windows

> [!NOTE]
> Back up any existing Neovim config first: `%localappdata%\nvim`

#### Option 1 — Chocolatey (recommended)

1. Install [Chocolatey](https://chocolatey.org/install) (run as **Administrator** in cmd):

```
winget install --accept-source-agreements chocolatey.chocolatey
```

2. Install dependencies (new **Administrator** cmd):

```
choco install -y neovim git ripgrep wget fd unzip gzip mingw make
```

3. Clone the config:

**cmd.exe:**
```
git clone https://github.com/Tanziruz/Neovim-Config.git "%localappdata%\nvim"
```

**PowerShell:**
```powershell
git clone https://github.com/Tanziruz/Neovim-Config.git "$env:LOCALAPPDATA\nvim"
```

#### Option 2 — WSL (Windows Subsystem for Linux)

```
wsl --install
wsl
sudo apt update && sudo apt install make gcc ripgrep fd-find git xclip neovim
git clone https://github.com/Tanziruz/Neovim-Config.git ~/.config/nvim
nvim
```

---

### Post-Installation

Start Neovim — plugins install automatically:

```sh
nvim
```

- Run `:Lazy` to view plugin status
- Run `:Mason` to view/manage installed language servers and tools
- Run `:checkhealth` if you encounter any issues

---

## Customizing & Adding Plugins

The config is modular. All custom plugins live in `lua/custom/plugins/`. Each file in that directory is automatically loaded by lazy.nvim.

### Adding a new plugin

1. Create a new file in `lua/custom/plugins/`, e.g. `lua/custom/plugins/myplugin.lua`:

```lua
return {
  'author/plugin-name',
  opts = {}, -- passes {} to require('plugin-name').setup({})
}
```

2. Save the file and restart Neovim (or run `:Lazy sync`). The plugin will be installed automatically.

### Changing the colour scheme

Edit `lua/custom/plugins/theme.lua`. Several themes are already commented out (tokyonight, horizon, radium). To switch, comment out the current `return { ... }` block and uncomment the one you want:

```lua
-- Uncomment to use tokyonight instead:
return {
  'folke/tokyonight.nvim',
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'tokyonight-moon'
  end,
}
```

### Adding a new language server

Edit `lua/custom/plugins/lspconfig.lua` and add your server to the `servers` table:

```lua
local servers = {
  clangd = {},
  pyright = {},
  gopls = {},  -- add this for Go support
  -- ...
}
```

Mason will install it automatically on next startup. Run `:Mason` to verify.

### Adding formatters

Edit `lua/custom/plugins/conform.lua` and add entries to `formatters_by_ft`:

```lua
formatters_by_ft = {
  lua = { 'stylua' },
  python = { 'black' },  -- add Python formatting
  go = { 'gofmt' },
},
```

### Changing keymaps

Global keymaps are set in `init.lua`. Plugin-specific keymaps are inside each plugin's config file under `lua/custom/plugins/`. Search for `vim.keymap.set` to find any existing mapping you want to change.

### Enabling kickstart extras

A few optional plugins ship with kickstart and can be enabled by requiring them in `init.lua`:

```lua
require('lazy').setup({
  require 'kickstart.plugins.debug',    -- DAP debugging
  require 'kickstart.plugins.autopairs', -- auto-pairs
  { import = 'custom.plugins' },
})
```

---

## FAQ

**Q: I already have a Neovim config — will this break it?**
Back up `~/.config/nvim` and `~/.local/share/nvim` first. You can also run both configs in parallel using `NVIM_APPNAME`:
```sh
NVIM_APPNAME=nvim-tanziruz nvim
```

**Q: How do I update plugins?**
Run `:Lazy update` inside Neovim.

**Q: How do I uninstall?**
Remove the config directory (`~/.config/nvim`) and the data directory (`~/.local/share/nvim`).

**Q: A plugin isn't working / there are errors on startup.**
Run `:checkhealth` — it will tell you what's missing.
