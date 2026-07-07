-- olimorris/codecompanion.nvim
-- https://github.com/olimorris/codecompanion.nvim

return {
  {
    'olimorris/codecompanion.nvim',
    cond = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
      'j-hui/fidget.nvim',
    },
    opts = {
      interactions = {
        chat = {
          tools = {
            opts = { wait_timeout = 3600000 },
          },
          adapter = {
            name = 'copilot',
            model = 'claude-sonnet-4.6',
          },
        },
      },
    },
    keys = {
      {'<leader>CC', function() require('codecompanion').chat() end, desc = 'Open CodeCompanion Chat', mode = { 'n' }},
      {'<leader>CT', function() require('codecompanion').toggle() end, desc = 'Toggle CodeCompanion Chat', mode = { 'n' }},
      {'<leader>CA', function() require('codecompanion').actions() end, desc = 'Open CodeCompanion Actions', mode = { 'n' }},
    },
    init = function()
      require('custom.plugins.codecompanion.fidget-spinner'):init()
    end,
  },
}
