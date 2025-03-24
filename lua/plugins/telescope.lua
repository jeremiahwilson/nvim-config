return {
{
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', },
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
    keymap('n', 'S', '<cmd>Telescope find_files<cr>', { desc = 'Find files' })
    keymap('n', 's', '<cmd>Telescope live_grep<cr>', { desc = 'Live grep' })
    --keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = 'Find buffers' })
    --keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { desc = 'Help tags' })
  end,
},
{
    "nvim-telescope/telescope-ui-select.nvim",
    -- This is your opts table
    config = function()
        require("telescope").setup({
          extensions = {
            ["ui-select"] = {
              require("telescope.themes").get_dropdown {
                -- even more opts
              }
            }
          }
        })
        -- To get ui-select loaded and working with telescope, you need to call
        -- load_extension, somewhere after setup function:
        require("telescope").load_extension("ui-select")
    end
}
}
