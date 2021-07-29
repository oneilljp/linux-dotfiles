local map = vim.api.nvim_set_keymap


-- No Arrow Keys
map('', '<up>', '<nop>', {noremap = true})
map('', '<down>', '<nop>', {noremap = true})
map('', '<left>', '<nop>', {noremap = true})
map('', '<right>', '<nop>', {noremap = true})

-- nvim-tree
map('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
map('n', '<leader>r', ':NvimTreeRefresh<CR>', {noremap = true, silent = true})
map('n', '<leader>n', ':NvimTreeFindFile<CR>', {noremap = true, silent = true})

-- Compe
map('i', '<C-Space>', 'compe#complete()', {noremap = true, expr = true, silent = true})
map('i', '<CR>', "compe#confirm({ 'keys': '<CR>', 'select': v:true })", {noremap = true, expr = true, silent = true})
map('i', '<C-e>', 'compe#close()', {noremap = true, expr = true, silent = true})
map('i', '<C-f>', "compe#scroll({ 'delta': +4 })", {noremap = true, expr = true, silent = true})
map('i', '<C-d>', "compe#scroll({ 'delta': -4 })", {noremap = true, expr = true, silent = true})

-- Telescope
map('n', '<leader>ff', ':Telescope find_files<CR>', {noremap = true})
map('n', '<leader>fb', ':Telescope buffers<CR>', {noremap = true})

