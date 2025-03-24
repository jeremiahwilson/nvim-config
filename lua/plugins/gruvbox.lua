return { -- Colorscheme
    'ellisonleao/gruvbox.nvim', -- install the colorscheme as a plugin since it doesn't come out of the box
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
          ---@diagnostic disable-next-line: missing-fields
          -- Options:
          require('gruvbox').setup {
            terminal_colors = true, -- add neovim terminal colors
            undercurl = true,
            underline = true,
            bold = true,
            italic = {
              strings = false,
              emphasis = true,
              comments = false,
              operators = false,
              folds = true,
            },
            strikethrough = true,
            invert_selection = false,
            invert_signs = false,
            invert_tabline = false,
            invert_intend_guides = false,
            inverse = true, -- invert background for search, diffs, statuslines and errors
            contrast = '', -- can be "hard", "soft" or empty string
            palette_overrides = {},
            overrides = {},
            dim_inactive = false,
            transparent_mode = false,
          }
          vim.cmd.colorscheme 'gruvbox'
    end,
}
