return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup({
        size = 20,
        autochdir = true,
        direction = 'float',
      })
    end,
  },
}
