local opt = vim.opt

opt.completeopt = {'menuone', 'noselect'}
opt.ignorecase = true
opt.number = true
opt.relativenumber = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.termguicolors = true
vim.g.rust_fold = 2
vim.g.rustfmt_command = 'rustfmt'
vim.g.rustfmt_options = ''

require('nvim-autopairs').setup()
require('nvim-autopairs.completion.compe').setup({
	map_cr = true,
	map_complete = true
})
