---@module 'lazy'
---@type LazySpec
return {
  {
    'nvim-tree/nvim-web-devicons',
    config = function()
      require('nvim-web-devicons').setup {
        color_icons = true,
        default = true,
      }
      vim.api.nvim_del_augroup_by_name 'NvimWebDevicons'
    end,
  },
}
