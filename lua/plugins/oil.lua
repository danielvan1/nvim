return {
  'stevearc/oil.nvim',
  -- Optional dependencies
  config = function()
    require('oil').setup()
  end,
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if prefer nvim-web-devicons

  vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' }),
}
