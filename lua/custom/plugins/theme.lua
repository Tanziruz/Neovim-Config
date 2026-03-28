-- return {
--   'folke/tokyonight.nvim',
--   priority = 1000,
--   config = function()
--     ---@diagnostic disable-next-line: missing-fields
--     require('tokyonight').setup {
--       styles = {
--         comments = { italic = true },
--       },
--     }
--     vim.cmd.colorscheme 'tokyonight-moon'
--   end,
-- }
--
-- return { 'akinsho/horizon.nvim', version = '*', priority = 1000, config = function() vim.cmd.colorscheme 'horizon' end }
--
--

-- return { 'Sly-Harvey/radium', version = '*', priority = 1000, config = function() vim.cmd.colorscheme 'radium' end }

return {
  'Shatur/neovim-ayu',
  lazy = false,
  priority = 1000,
  config = function()
    require('ayu').setup {
      mirage = true,
      terminal = true,
    }

    vim.cmd 'colorscheme ayu-dark'
  end,
}
