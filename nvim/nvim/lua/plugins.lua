local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		'git',
		'clone',
		'--depth',
		'1',
		'https://github.com/wbthomason/packer.nvim',
		install_path,
	})
	print('Installing packer close and reopen Neovim...')
	vim.cmd([[packadd packer.nvim]])
end
-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require('packer.util').float({ border = 'rounded' })
		end,
	},
})

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colorscheme
  use({
    'catppuccin/nvim',
    as = 'catppuccin' })

  -- Syntax Highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'kyazdani42/nvim-web-devicons'

  -- Tab Bar
  use 'romgrk/barbar.nvim'

  -- Autocomplete/LSP
  use {
    'williamboman/nvim-lsp-installer',
    {
      'neovim/nvim-lspconfig',
      config = function()
        require('settings.plugs.lspconf')
      end
    }
  }

  -- Notifications
  use {
    'rcarriga/nvim-notify',
    config = function()
      require('notify').setup()
    end
  }

  use {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-nvim-lua',
    {
      'hrsh7th/nvim-cmp',
      config = function()
        require('settings.plugs.cmp-conf')
      end,
    },
  }

  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Bar
  use 'feline-nvim/feline.nvim'

  -- Floating Term (Alt + i)
  use 'numToStr/FTerm.nvim'

  -- Comments
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  -- Pairs
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
    end
  }

  -- Startup
  use {
    'goolord/alpha-nvim',
    config = function ()
        -- require'alpha'.setup(require'alpha.themes.dashboard'.config)
        require('settings.plugs.alpha')
    end
  }

  -- Tree
  -- Unless you are still migrating, remove the deprecated commands from v1.x
  use {
    'nvim-neo-tree/neo-tree.nvim',
      branch = 'v2.x',
      requires = {
        'nvim-lua/plenary.nvim',
        'kyazdani42/nvim-web-devicons', -- not strictly required, but recommended
        'MunifTanjim/nui.nvim',
      },
      config = function()
        require('settings.plugs.neotree')
      end,
  }

  -- Symbols
  use {
    'simrat39/symbols-outline.nvim',
    -- config = function()
    --   require('settings.plugs.symbols-outline')
    -- end,
  }

  -- Diagnostics
  use {
    'folke/trouble.nvim',
    config = function()
      require('settings.plugs.trouble')
    end,
  }

  -- Better Spellchecking
  use {
    'lewis6991/spellsitter.nvim',
    config = function()
      require('spellsitter').setup()
    end
  }

end)


