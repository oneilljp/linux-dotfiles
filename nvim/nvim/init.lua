require('plugins')
require('opt')
require('map')

-- Colorscheme
vim.g.catppuccin_flavour = "macchiato"
local catppuccin = require("catppuccin")
catppuccin.setup({integrations = {barbar = true,}})
vim.cmd[[colorscheme catppuccin]]

-- Bar
require("feline").setup({
  components = require('catppuccin.core.integrations.feline'),
})
