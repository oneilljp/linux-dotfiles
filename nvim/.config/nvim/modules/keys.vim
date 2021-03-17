" Keybinds
nmap <F2> :w<CR>
nmap <F1> :w<CR>:qall<CR>
imap <F2> <ESC>:w<CR>i
imap <F1> <ESC>:w<CR>:qall<CR>
"map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
map <F4> :CocCommand clangd.switchSourceHeader<CR>
nmap <F9> :NERDTree<CR>
nmap <F10> :NERDTreeToggle<CR>
