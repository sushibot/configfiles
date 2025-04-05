return {
  -- JSX context-aware commenting
  {
    'JoosepAlviste/nvim-ts-context-commentstring',
    lazy = false,
    init = function()
      vim.g.skip_ts_context_commentstring_module = true

      require('ts_context_commentstring').setup({
        enable_autocmd = false,
      })

      -- Override to inject context-aware commentstring logic
      local get_option = vim.filetype.get_option
      ---@diagnostic disable-next-line: duplicate-set-field
      vim.filetype.get_option = function(filetype, option)
        return option == 'commentstring' and require('ts_context_commentstring.internal').calculate_commentstring() or get_option(filetype, option)
      end
    end,
  },

  -- Main commenting plugin
  {
    'numToStr/Comment.nvim',
    dependencies = {
      'JoosepAlviste/nvim-ts-context-commentstring',
    },
    config = function()
      require('Comment').setup({
        pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
      })
    end,
  },
}
