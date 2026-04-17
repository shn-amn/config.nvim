---@module 'lazy'
---@type LazySpec
return {
  'shn-amn/mostly-monochrome',
  lazy = false,
  priority = 1000,
  dependencies = { 'rktjmp/lush.nvim' },
  config = function()
    vim.cmd 'colorscheme mostly-monochrome'
    vim.api.nvim_create_autocmd('VimEnter', {
      callback = function()
        vim.cmd 'colorscheme mostly-monochrome'
      end,
    })
  end,
}
