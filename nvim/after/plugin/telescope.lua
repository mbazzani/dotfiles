--Does not need to be sourced, will automatically be called after telescope is loaded
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>pf', function()
	builtin.grep_string({search = vim.fn.input("grep >") })
end)

