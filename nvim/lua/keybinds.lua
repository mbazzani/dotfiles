--Leader key is space
vim.g.mapleader = " "
--Double leader enters command mode
vim.keymap.set("n","<leader><leader>",":")
vim.keymap.set("n","<leader>.",vim.cmd.Ex)
--File actions
vim.keymap.set("n","<leader>q",vim.cmd.q)
vim.keymap.set("n","<leader>w",vim.cmd.w)
--Window motions
vim.keymap.set("n","<leader>ww", "<C-w>w")
vim.keymap.set("n","<leader>wh", "<C-w>h")
vim.keymap.set("n","<leader>wj", "<C-w>j")
vim.keymap.set("n","<leader>wk", "<C-w>k")
vim.keymap.set("n","<leader>wl", "<C-w>l")
