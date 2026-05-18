---@module 'lazy'
---@type LazySpec
return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      sort = {
        sorter = 'extension',
        folders_first = true,
      },
      view = {
        float = {
          enable = true,
          open_win_config = {
            relative = 'editor',
            width = 60,
            height = 30,
            row = 3,
            col = 30,
          },
        },
      },
      renderer = {
        group_empty = true,
        icons = {
          glyphs = {
            git = {
              ignored = '󰅚', -- 󰅙 󰅚
              untracked = '󰄯', -- 󰄰 󰄱 󰄯
              unstaged = '󰄯',
              staged = '󰄴', -- 󰄴 󰄵
              deleted = '󰅙',
              renamed = '󰈆',
              unmerged = '󰆕',
            },
            folder = {
              default = '', --  
              open = '', --  
              empty = '', -- 
              empty_open = '', -- 
              arrow_closed = ' ', -- 󰁔 
              arrow_open = ' ', -- 󰁅  ⌵
            },
          },
        },
      },
    }
    vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeFindFileToggle<cr>', { desc = 'Explorer (Float)' })
  end,
}
