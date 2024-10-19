require('mason').setup()

local on_attach = function()
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = 0 })
	vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { buffer = 0 })
	vim.keymap.set('n', '<leader>gt', vim.lsp.buf.type_definition, { buffer = 0 })
	vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { buffer = 0 })
	vim.keymap.set('n', '<leader>vr', vim.lsp.buf.references, { buffer = 0 })
	vim.keymap.set('n', '<leader>fm', vim.lsp.buf.format, { buffer = 0 })
end

vim.g.rustaceanvim = {
	server = {
		cmd = function()
			local mason_registry = require('mason-registry')
			local ra_binary = mason_registry.is_installed('rust-analyzer')
				-- This may need to be tweaked, depending on the operating system.
				and mason_registry.get_package('rust-analyzer'):get_install_path() .. "/rust-analyzer"
				or "rust-analyzer"
			on_attach()
			return { ra_binary } -- You can add args to the list, such as '--log-file'
		end,
	},
}


require('mason-lspconfig').setup {
	ensure_installed = {
		'lua_ls'
	},
	handlers = {
		function(server_name)
			local server = require('lspconfig')[server_name]
			server.setup({
				on_attach = on_attach
			})
		end
	}
}
