-- git-conflict
-- https://github.com/akinsho/git-conflict.nvim

return {
  'akinsho/git-conflict.nvim',
  version = '*',
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require('git-conflict').setup {
      default_mappings = false,
      disable_diagnostics = true,
    }

    vim.keymap.set('n', 'co', '<Plug>(git-conflict-ours)')
    vim.keymap.set('n', 'ct', '<Plug>(git-conflict-theirs)')
    vim.keymap.set('n', 'cb', '<Plug>(git-conflict-both)')
    vim.keymap.set('n', 'c0', '<Plug>(git-conflict-none)')
    vim.keymap.set('n', '[x', '<Plug>(git-conflict-prev-conflict)')
    vim.keymap.set('n', ']x', '<Plug>(git-conflict-next-conflict)')
  end,
}
