set nu
syntax on
set backspace=2
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
set relativenumber
set ignorecase
set smartcase
set smarttab
set smartindent
set incsearch
set showmatch
set showmode
set listchars=tab:▸\ ,eol:¬
set completeopt=menuone,menu,longest

set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest

nnoremap <leader>n :noh<cr>
nnoremap <leader>l :set list!<cr>
nnoremap <leader>c :set cursorcolumn!<cr>

" source the appropriate .rc files
nmap <leader>so :source ~/.vimrc<cr>:ec "sourced ~/.vimrc"<cr>


" open ~/.vimrc or ~/.gvimrc in new tab
command! -nargs=0 Vimrc tabe ~/.vimrc
command! -nargs=0 Gvimrc tabe ~/.gvimrc

" error on trailing whitespaces
nnoremap <leader>t :match ErrorMsg '\s\+$'<cr>

" Filetype-specific settings
filetype on
filetype plugin on
au BufNewFile,BufRead *.rb set tabstop=2 | set shiftwidth=2
au BufNewFile,BufRead *.go set filetype=go
au BufNewFile,BufRead *.mm set filetype=objc
au BufNewFile,BufRead *.clj set tabstop=2 | set shiftwidth=2 | set colorcolumn=80
