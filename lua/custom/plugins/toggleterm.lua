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
        on_create = function(term)
          local cmd = 'export NVIM_TERM_ID=' .. term.id .. ' && clear\13'
          vim.api.nvim_chan_send(term.job_id, cmd)
        end,
      }
      vim.keymap.set('n', '<leader>t1', '<cmd>1ToggleTerm<cr>', { desc = '[T]erminal [1]' })
      vim.keymap.set('n', '<leader>t2', '<cmd>2ToggleTerm<cr>', { desc = '[T]erminal [2]' })
      vim.keymap.set('n', '<leader>t3', '<cmd>3ToggleTerm<cr>', { desc = '[T]erminal [3]' })
    end,
  },
}
