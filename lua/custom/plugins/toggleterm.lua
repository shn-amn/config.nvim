---@module 'lazy'
---@type LazySpec
return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup {
        size = 25,
        open_mapping = { [[<c-\>]] }, -- Shortcut to toggle: Ctrl + Backslash
        direction = 'float', -- This makes it a floating window
        float_opts = {
          border = 'curved', -- Use 'single' or 'shadow' for monochrome
          winblend = 0,
        },
        start_in_insert = true,
      }
    end,
  },
}
