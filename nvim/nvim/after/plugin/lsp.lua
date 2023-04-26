local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.ensure_installed({
	'clangd',
	'pyright'
})
lsp.setup()
