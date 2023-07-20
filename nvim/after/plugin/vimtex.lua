vim.api.nvim_set_var("vimtex_view_general_viewer", "okular")
vim.api.nvim_set_var("vimtex_view_general_options", "--unique file:@pdf\\#src:@line@tex")
vim.api.nvim_set_var("vimtex_compiler_method", "xelatex")

-- VimTeX uses latexmk as the default compiler backend. If you use it, which is
-- strongly recommended, you probably don't need to configure anything. If you
-- want another compiler backend, you can change it as follows. The list of
-- supported backends and further explanation is provided in the documentation,"
-- see ":help vimtex-compiler".

