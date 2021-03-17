set nocompatible
filetype off

set t_Co=256
syntax on
set number
set showmatch
set autoindent
set smartindent

set tabstop=4
set shiftwidth=4

autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype css setlocal ts=2 sw=2 expandtab
autocmd Filetype jsx setlocal ts=2 sw=2 expandtab

set colorcolumn=90
highlight colorcolumn ctermbg=darkgrey

source $HOME/.config/nvim/modules/plugins.vim
source $HOME/.config/nvim/modules/colors.vim
source $HOME/.config/nvim/modules/keys.vim
source $HOME/.config/nvim/modules/plugconf.vim

