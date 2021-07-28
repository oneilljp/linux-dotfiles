----------------------------------------
-- Import Lua Modules
----------------------------------------
require('plugins')
require('opts')
require('mappings')
require('nvim-tree/main')
require('compe/main')
require('lspconf/main')
require('dashboard/main')
require('nord').set()
require('lualine').setup {
	options = { theme = 'nord' },
}

local ts = require 'nvim-treesitter.configs'
ts.setup { ensure_installed = 'maintained', highlight = {enable = true} }
