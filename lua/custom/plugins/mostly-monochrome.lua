---@module 'lazy'
---@type LazySpec
return {
  dir = '~/Code/mostly-monochrome',
  lazy = false,
  priority = 1000,
  dev = true,
  dependencies = { 'rktjmp/lush.nvim' },
  config = function()
    vim.cmd 'colorscheme mostly-monochrome'
    vim.api.nvim_create_autocmd('VimEnter', {
      callback = function()
        vim.schedule(function ()
          vim.cmd 'colorscheme mostly-monochrome'
        end)
      end,
    })
  end,
}
