local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.ensure_installed({
	'clangd',
	'pyright'
})
vim.keymap.set("n","<leader>u", vim.cmd.UndotreeToggle)
lsp.setup()
