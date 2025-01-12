return {
  'nvim-neotest/neotest',
  cmd = { 'Neotest' },
  dependencies = {
    'Issafalcon/neotest-dotnet',
  },
  opts = function()
    return {
      -- your neotest config here
      adapters = {
        require 'neotest-dotnet',
      },
    }
  end,
  config = function(_, opts)
    -- get neotest namespace (api call creates or returns namespace)
    local neotest_ns = vim.api.nvim_create_namespace 'neotest'
    vim.diagnostic.config({
      virtual_text = {
        format = function(diagnostic)
          local message = diagnostic.message:gsub('\n', ' '):gsub('\t', ' '):gsub('%s+', ' '):gsub('^%s+', '')
          return message
        end,
      },
    }, neotest_ns)
    require('neotest').setup(opts)
  end,

  vim.keymap.set('n', '<leader>Tr', function()
    require('neotest').run.run()
  end, { desc = 'Test Run' }),

  vim.keymap.set('n', '<leader>Td', function()
    require('neotest').run.run { strategy = 'dap' }
  end, { desc = 'Test Debug' }),

  vim.keymap.set('n', '<leader>Ts', function()
    require('neotest').run.stop()
  end, { desc = 'Test Stop' }),

  vim.keymap.set('n', '<leader>Tt', function()
    require('neotest').summary.toggle()
  end, { desc = 'Test Summary Toggle' }),

  vim.keymap.set('n', '<leader>TT', function()
    require('neotest').output_panel.toggle()
  end, { desc = 'Test Output Panel' }),
}
