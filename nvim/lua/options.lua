--General
vim.opt.backup = false					-- creates a backup file
vim.opt.undodir = os.getenv("HOME") .. ".config/nvim/.undodir"
vim.opt.clipboard = "unnamedplus"		-- copies to system clipboard
vim.opt.termguicolors = true			-- set terminal gui colors
vim.opt.scrolloff = 16
vim.opt.colorcolumn = "80"

--Numbering
vim.opt.number = true
vim.opt.relativenumber = true

--Formatting
vim.opt.tabstop = 4
vim.opt.wrap = false
vim.opt.smartindent = true				-- automatically determine indentation

--Searching
vim.opt.hlsearch = false
vim.opt.incsearch = true


