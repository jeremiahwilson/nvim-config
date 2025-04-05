return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    -- The config function runs when the plugin loads
    config = function()
      local telescope = require('telescope')
      telescope.setup({
        defaults = {
          -- Your defaults config here
          respect_gitignore = true,
          file_ignore_patterns = {"package.json", "package%-lock.json", "node_modules"},
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
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
              -- even more opts
            }
          }
        }
      })
      
      -- Set up keymaps
      local keymap = vim.keymap.set
      keymap('n', '<leader>S', '<cmd>Telescope find_files<cr>', { desc = 'Find files' })
      keymap('n', '<leader>s', '<cmd>Telescope live_grep<cr>', { desc = 'Live grep' })
      --keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = 'Find buffers' })
      --keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { desc = 'Help tags' })
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      -- Load the extension AFTER telescope has been set up
      require("telescope").load_extension("ui-select")
    end
  }
}
