--Automatically install packer if machine does not have it
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git',
		       'clone',
			   '--depth',
			   '1',
			   'https://github.com/wbthomason/packer.nvim',
			   install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	--Allow packer to manage itself
	use 'wbthomason/packer.nvim'

	use 'nvim-tree/nvim-web-devicons'

	-- My plugins 
	use {
		'nvim-telescope/telescope.nvim', branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
	}

    use 'navarasu/onedark.nvim'

	use 'mbbill/undotree'

	use 'nvim-lualine/lualine.nvim'

	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}


	use 'ggandor/leap.nvim'

	-- Remove the `use` here if you're using folke/lazy.nvim.
    use {
      'Exafunction/codeium.vim',
      config = function ()
        -- Change '<C-g>' here to any keycode you like.
        vim.keymap.set('i', '<Alt-Enter>', function ()
				return vim.fn['codeium#Accept']() end, { expr = true })
        vim.keymap.set('i', '<Alt-Tab>', function()
				return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
        vim.keymap.set('i', '<c-,>', function()
				return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
        vim.keymap.set('i', '<c-x>', function()
				return vim.fn['codeium#Clear']() end, { expr = true })
      end
    }

	use 'lervag/vimtex'

	use 'TimUntersberger/neogit'

	use 'luochen1990/rainbow'

	use 'Olical/conjure'

	use 'danymat/neogen'

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require('packer').sync()
	end
end)

