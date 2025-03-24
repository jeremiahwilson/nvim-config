return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  lazy = false, -- neo-tree will lazily load itself
  ---@module "neo-tree"
  ---@type neotree.Config?
  opts = {
    -- fill any relevant options here
    close_if_last_window = true,
    window = {
        mappings = {
            ["f"] = "none", -- f is very similar to / and breaks my leap keybind
            ["s"] = "none",
            ["S"] = "none",
        },
    },
    filesystem = {
        window = { position = "right" }
    }
  },
    config = function(_, opts)
        require('neo-tree').setup(opts)
        vim.keymap.set('n', '<leader>n', ':Neotree filesystem reveal right toggle<CR>') -- <CR> = press enter
    end
}
