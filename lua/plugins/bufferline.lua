return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',

  config = function()
    require('bufferline').setup {
      options = {
        show_duplicate_prefix = true, -- whether to show duplicate buffer prefix
        show_tab_indicators = true,
        max_name_length = 30,
        show_buffer_icons = true, -- Show buffer icons
        show_buffer_close_icons = true, -- Show close icon
        always_show_bufferline = true,
        separator_style = 'slant',
        color_icons = true, -- whether or not to add the filetype icon highlights
        close_if_last_window = false,

        -- Add indicator line to active tab
        -- indicator = {
        --   style = 'underline', -- You can use 'underline' or 'box'
        --   icon = '▎', -- Custom icon to show next to the active tab (optional)
        --   color = { fg = '#ff5f00', bg = '#2e3440' }, -- Color for the indicator line
        -- },
        --
        -- indicator = {
        --   style = 'underline', -- Test with slant style if you prefer
        --   icon = '▎', -- Optional custom icon
        --   color = { fg = '#00FF00', bg = '#2e3440' },
        -- },

        offsets = {
          {
            filetype = 'neo-tree',
            text = 'File Explorer',
            highlight = 'Directory',
            separator = true, -- use a "true" to enable the default, or set your own character
          },
        },

        highlights = {
          buffer_selected = {
            fg = '#ffffff', -- Text color (white)
            bg = '#2e3440', -- Background color (dark gray)
            bold = true, -- Bold text for emphasis
            underline = true, -- Add an underline
          },
          separator_selected = {
            fg = '#88c0d0', -- Separator color (cyan)
            bg = '#2e3440', -- Background color
          },
          fill = {
            bg = '#3b4252', -- Background for unused space
          },
        },
      },
    }

    local opts = { noremap = true, silent = true }

    -- Switch to the next buffer
    vim.keymap.set('n', '<leader>bt', ':BufferLineCycleNext<CR>', { desc = 'Next Buffer', noremap = true, silent = true })

    -- Switch to the previous buffer
    vim.keymap.set('n', '<leader>bT', ':BufferLineCyclePrev<CR>', { desc = 'Next Buffer', noremap = true, silent = true })

    -- Close the current buffer
    vim.keymap.set('n', '<leader>bq', ':bdelete %<CR>', { desc = 'Quit Current Buffer', noremap = true, silent = true })

    -- Go to buffer 1
    vim.keymap.set('n', '<leader>1', ':BufferLineGoToBuffer 1<CR>', opts)

    -- Go to buffer 2
    vim.keymap.set('n', '<leader>2', ':BufferLineGoToBuffer 2<CR>', opts)

    -- Go to buffer 3
    vim.keymap.set('n', '<leader>3', ':BufferLineGoToBuffer 3<CR>', opts)

    -- Go to buffer 4
    vim.keymap.set('n', '<leader>4', ':BufferLineGoToBuffer 4<CR>', opts)

    -- Go to buffer 5
    vim.keymap.set('n', '<leader>5', ':BufferLineGoToBuffer 5<CR>', opts)

    -- Go to buffer 6
    vim.keymap.set('n', '<leader>6', ':BufferLineGoToBuffer 6<CR>', opts)

    -- Go to buffer 7
    vim.keymap.set('n', '<leader>7', ':BufferLineGoToBuffer 7<CR>', opts)

    -- Go to buffer 8
    vim.keymap.set('n', '<leader>8', ':BufferLineGoToBuffer 8<CR>', opts)

    -- Go to buffer 9
    vim.keymap.set('n', '<leader>9', ':BufferLineGoToBuffer 9<CR>', opts)
  end,
}
