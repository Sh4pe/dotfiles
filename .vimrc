set nocompatible
set nu
syntax on
set backspace=2
set autoindent
set cpoptions-=u
set hlsearch
set nofoldenable
set tabstop=4
set shiftwidth=4
set expandtab
set window=48
set encoding=utf-8
set autoindent
set cursorline
set ruler
" relativenumber for every new buffer
au bufread * set relativenumber
" if we change .(g)vimrc and source it, relativenumber is lost unless it is
" set manually
set relativenumber
set ignorecase
set smartcase
set incsearch
set showmatch
set listchars=tab:▸\ ,eol:¬

nnoremap <leader>n :noh<cr>
nnoremap <leader>l :set list!<cr>
nnoremap <leader>c :set cursorcolumn!<cr>

" source the appropriate .rc files
nmap <leader>so :source ~/.vimrc<cr>:ec "sourced ~/.vimrc"<cr>

" copied this from a gentoo config
set viminfo='20,\"100,:20,%,n~/.viminfo



" add Go syntax
au BufNewFile,BufRead *.go set filetype=go

" add objc syntax to .mm files
au BufNewFile,BufRead *.mm set filetype=objc

" filetype plugin
filetype on
filetype plugin on

" open ~/.vimrc or ~/.gvimrc in new tab
command! -nargs=0 Vimrc tabe ~/.vimrc
command! -nargs=0 Gvimrc tabe ~/.gvimrc

" settings for ruby files
au BufNewFile,BufRead *.rb set tabstop=2 | set shiftwidth=2

" spell stuff
"set spell spelllang=en_us

" pathogen
execute pathogen#infect()
