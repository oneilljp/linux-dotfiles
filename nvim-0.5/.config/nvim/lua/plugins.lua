return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	use 'neovim/nvim-lspconfig'

	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
	}

	use 'kyazdani42/nvim-tree.lua'

	use 'hrsh7th/nvim-compe'

	use 'windwp/nvim-autopairs'

	use 'b3nj5m1n/kommentary'

	use {
		'hoob3rt/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true } 
	}

	use {
    "numtostr/FTerm.nvim",
    config = function()
        require("FTerm").setup()
    end
	}

	use 'glepnir/dashboard-nvim'

	use 'shaunsingh/nord.nvim'
end)
