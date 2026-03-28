-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

---@module 'lazy'
---@type LazySpec
return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  ---@module 'neo-tree'
  ---@type neotree.Config
  opts = {
    default_component_configs = {
      icon = {
        provider = function(icon, node, state)
          local mini_icons = require 'mini.icons'

          if node.type == 'directory' then
            local icon_str, hl = mini_icons.get('directory', node.name or '')
            icon.text = icon_str
            icon.highlight = hl
          else
            local icon_str, hl = mini_icons.get('file', node.name or '')
            icon.text = icon_str
            icon.highlight = hl
          end
        end,
      },
    },

    filesystem = {

      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['H'] = 'toggle_hidden',
        },
      },

      filtered_items = {
        visible = true,
        hide_dotfiles = false,
      },

      use_default_mappings = true,
    },
  },

  config = function(_, opts)
    require('neo-tree').setup(opts)

    vim.api.nvim_set_hl(0, 'NeoTreeHiddenByName', {
      fg = nil,
    })
  end,
}
