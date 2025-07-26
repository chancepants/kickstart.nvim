-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'folke/snacks.nvim',
    ---@type snacks.Config
    opts = {
      lazygit = {
        -- your lazygit configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      },
    },
  },
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup {
        open_mapping = [[<C-\>]], -- default, but we'll override below
        direction = 'float',
        start_in_insert = true,
        close_on_exit = true,
        persist_size = true,
        float_opts = {
          border = 'single', -- or "double", "curved", etc.
          width = function()
            return math.floor(vim.o.columns * 0.7)
          end,
          height = function()
            return math.floor(vim.o.lines * 0.6)
          end,
          winblend = 3,
        },
      }
    end,
  },
}
