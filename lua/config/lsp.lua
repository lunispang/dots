require('mason').setup()
require('mason-lspconfig').setup {
	ensure_installed = {
		'csharp_ls',
		'rust_analyzer',
		'lua_ls'
	},
	handlers = {
		function(server_name)
			local server = require('lspconfig')[server_name]
			if server.setup then
				server.setup({
					on_attach = function()
						vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {buffer=0})
						vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {buffer=0})
						vim.keymap.set('n', '<leader>gt', vim.lsp.buf.type_definition, {buffer=0})
						vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {buffer=0})
					end
				})
			end
		end
	}
}
