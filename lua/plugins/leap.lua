return { 
    'ggandor/leap.nvim', 
    config = function()
	-- require('leap').add_default_mappings()
	vim.keymap.set('n', 'f', '<Plug>(leap-anywhere)')
	vim.keymap.set('x', 'f', '<Plug>(leap)')
	vim.keymap.set('o', 'f', '<Plug>(leap-forward)')
	vim.keymap.set('o', 'F', '<Plug>(leap-backward)')
    end
}
