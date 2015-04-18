" stuff for MacVim
colorscheme blackboard
set guifont=Menlo_Regular:h12

" hide toolbar
set go-=T

" source the appropriate .rc files
nmap <leader>so :source ~/.vimrc<cr>:source ~/.gvimrc<cr>:ec "sourced ~/.vimrc and ~/.gvimrc"<cr>

" switching between windows
nmap <leader>w :maca _cycleWindowsBackwards:<cr>

" default window geometry
set lines=50
set columns=140
