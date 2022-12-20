require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
  -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
  --ensure_installed = { "c", "lua", "rust", "python", "markdown", "org", "latex", },
  ensure_installed = "all",

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  ignore_install = { "javascript" },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,
  },
}

--- Workaround for telescope folding inconsistencies
vim.opt.foldminlines=30
vim.opt.foldnestmax=3
--vim.opt.foldmethod     = 'expr'
--vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
vim.api.nvim_create_autocmd({'BufEnter','BufAdd','BufNew','BufNewFile','BufWinEnter'}, {
  group = vim.api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
  callback = function()
    vim.opt.foldmethod     = 'expr'
    vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
  end
})
--End workaround
