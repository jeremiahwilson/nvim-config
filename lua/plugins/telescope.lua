-- lua/plugins/telescope.lua

-- Since telescope is loaded via lazy.nvim, you don't need to require it explicitly here
-- Your configuration will be applied once lazy.nvim loads telescope

-- This is the standard way to configure a plugin with lazy.nvim
return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    -- You can list other dependencies here, like:
    -- { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }
  },
  -- The config function runs when the plugin loads
  config = function()
    local telescope = require 'telescope'

    telescope.setup {
      defaults = {
        -- Your defaults config here
        mappings = {
          i = {
            -- Insert mode mappings
          },
          n = {
            -- Normal mode mappings
          },
        },
      },
      extensions = {
        -- Extensions config here
      },
    }

    -- Set up keymaps
    local keymap = vim.keymap.set
    keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = 'Find files' })
    keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { desc = 'Live grep' })
    keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = 'Find buffers' })
    keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { desc = 'Help tags' })
  end,
  -- Optional: You can specify lazy-loading if you want
  -- cmd = "Telescope",
  -- keys = {
  --   { "<leader>f", desc = "Telescope" },
  -- },
}
