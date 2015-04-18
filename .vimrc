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
" source the appropriate .rc files
nmap <leader>so :source ~/.vimrc<cr>:ec "sourced ~/.vimrc"<cr>

au FocusLost * :wa

" copied this from a gentoo config
set viminfo='20,\"100,:20,%,n~/.viminfo
" when we reload, tell vim to restore the cursor to the saved position
augroup JumpCursorOnEdit
	au!
	autocmd BufReadPost *
		\ if expand("<afile>:p:h") !=? $TEMP |
		\ if line("'\"") > 1 && line("'\"") <= line("$") |
		\ let JumpCursorOnEdit_foo = line("'\"") |
		\ let b:doopenfold = 1 |
		\ if (foldlevel(JumpCursorOnEdit_foo) > foldlevel(JumpCursorOnEdit_foo - 1)) |
		\ let JumpCursorOnEdit_foo = JumpCursorOnEdit_foo - 1 |
		\ let b:doopenfold = 2 |
		\ endif |
		\ exe JumpCursorOnEdit_foo |
		\ endif |
		\ endif
	" Need to postpone using "zv" until after reading the modelines.
		autocmd BufWinEnter *
		\ if exists("b:doopenfold") |
		\ exe "normal zv" |
		\ if(b:doopenfold > 1) |
		\ exe "+".1 |
		\ endif |
		\ unlet b:doopenfold |
		\ endif
augroup END



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
