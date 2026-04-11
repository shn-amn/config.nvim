---@module 'lazy'
---@type LazySpec
return {
  dir = '~/Code/mostly-monochrome',
  lazy = false,
  priority = 1000,
  dev = true,
  dependencies = { 'rktjmp/lush.nvim' }, -- The manager handles this
  config = function() vim.cmd 'colorscheme mostly-monochrome' end,
}
