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
    branch = 'main',
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
          winblend = 0,
        },
      }
    end,
  },
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    config = function()
      require('barbar').setup {
        semantic_letters = false,
        icons = {
          filetype = {
            enabled = false,
          },
        },
      }
      vim.keymap.set('n', '<leader>p', '<Cmd>BufferPick<CR>')
      vim.keymap.set('n', '<leader>bd', '<Cmd>BufferClose<CR>')
    end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
  {
    'Hoffs/omnisharp-extended-lsp.nvim',
  },
  {
    'tpope/vim-fugitive',
  },
}
