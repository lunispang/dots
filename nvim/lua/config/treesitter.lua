require('nvim-treesitter.configs').setup({
	--ensure_installed = { "hyprlang", "c", "cpp", "rust", "json", "c_sharp", "vim", "vimdoc", "query", "markdown", "markdown_inline" },

	sync_install = false,

	auto_install = false,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	}
})
