--<C-c> to close chat window.
--<C-u> scroll up chat window.
--<C-d> scroll down chat window.
--<C-y> to copy/yank last answer.
--<C-i> [Edit Window] use response as input.
--<C-o> Toggle settings window.
--<Tab> Cycle over windows.
vim.keymap.set("n","<leader>e",vim.cmd.ChatGPT)
vim.keymap.set("n","<leader>ei",vim.cmd.ChatGPTEditWithInstructions)
