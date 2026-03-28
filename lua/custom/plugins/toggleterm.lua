return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      direction = 'horizontal', -- bottom terminal
      size = 15,
      open_mapping = [[<C-`>]], -- your shortcut
      start_in_insert = true,
      persist_size = true,
    }
  end,
}
