---@module 'lazy'
---@type LazySpec
return {
  'lewis6991/gitsigns.nvim',
  config = function()
    local gitsigns = require 'gitsigns'
    gitsigns.setup {
      ---@diagnostic disable: missing-fields
      signs = {
        add = { text = '▌' },
        change = { text = '▌' },
        delete = { text = '▁' },
        topdelete = { text = '▔' },
        changedelete = { text = '▚' },
        untracked = { text = '▎' },
      },
      signs_staged = {
        add = { text = '▌' },
        change = { text = '▌' },
        delete = { text = '▁' },
        topdelete = { text = '▔' },
        changedelete = { text = '▚' },
        untracked = { text = '▎' },
      },
      ---@diagnostic enable: missing-fields
      signs_staged_enable = true,
      attach_to_untracked = true,
      on_attach = function(bufnr)
        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end
        map('n', ']h', function() gitsigns.nav_hunk 'next' end, { desc = 'Gitsigns next [H]unk' })
        map('n', '[h', function() gitsigns.nav_hunk 'prev' end, { desc = 'Gitsigns previous [H]unk' })
        map('n', '<leader>hs', gitsigns.stage_hunk, { desc = 'Gitsigns [H]unk [S]tage' })
        map('n', '<leader>hr', gitsigns.reset_hunk, { desc = 'Gitsigns [H]unk [R]eset' })
        map('n', '<leader>hp', gitsigns.preview_hunk, { desc = 'Gitsigns [H]unk [P]review' })
      end,
    }
  end,
}
