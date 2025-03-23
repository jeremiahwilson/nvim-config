-- TODO: Install Leap
-- TODO: Setup LSP
-- TODO: Setup neotree

-- [[ GLOBALS ]]
-- Set <space> as the leader key
-- See `:help mapleader`
-- Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true


require 'options'
require 'keymaps'
require 'autocommands'

require('lazy-bootstrap') -- init the package manager
require("lazy").setup("plugins") -- install and setup plugins

vim.cmd 'colorscheme gruvbox' -- at the end since gruvbox is installed as a plugin
