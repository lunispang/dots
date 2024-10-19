local cmp = require('cmp')

local cmp_select = {behaviour = cmp.SelectBehavior.Select}
local cmp_mappings = {
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<Tab>'] = cmp.mapping.confirm({select=true}),
	['<C-r>'] = cmp.mapping.complete(),
	['<C-e>'] = cmp.mapping.abort(),
}

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end
	},
	sources = {
		{name = 'nvim_lsp'},
		{name = 'vsnip'},
	},
	mapping = cmp_mappings
})

