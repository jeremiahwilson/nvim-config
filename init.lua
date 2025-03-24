-- TODO: Configure telescope from scratch with typecraft video
-- TODO: Setup LSP probably also in typecraft
-- TODO: Setup neotree
-- IDEA: map s to grep via telescope. S file search?
-- IDEA: shift-J shift-K scroll 25% of visible buffer
-- so if theres 100 lines showing on my screen and im on line 50, move cursor to line 75
-- and put line 75 where line 50 was. 
-- Keybinds that can go: K, Z, X, L, H, r
-- Honestly don't see myself ever using B or E but we'll see
-- J is actually useful but I think move it off J. Like move Join to L or something
-- redo is ctrl-r by default. Not clear what U does so maybe move it to that

-- [[ GLOBALS ]]
-- `:help mapleader`
-- Must happen before plugins are loaded
vim.g.mapleader = ' ' -- <space>
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true


require 'options'
require 'keymaps'
require 'autocommands'

require('lazy-bootstrap') -- init the package manager
require("lazy").setup("plugins") -- install and setup plugins
