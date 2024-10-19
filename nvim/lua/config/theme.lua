vim.cmd('colorscheme tokyonight')
vim.api.nvim_set_hl(0, 'normal', {})
require('tokyonight').setup({
	config = function()
		vim.cmd('colorscheme tokyonight')
		vim.api.nvim_set_hl(0, 'normal', {})
	end
})
