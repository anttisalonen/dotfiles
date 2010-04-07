" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes) in terminals

set history=1000
set wildmode=list:longest
set ignorecase 
set smartcase

" set tabstop=4
" set smarttab
" set autoindent
" set smartindent
set expandtab
set tabstop=4
set softtabstop=4
autocmd FileType *.c,*.cpp set cindent
autocmd FileType *.py,*.hs set nocindent
autocmd FileType c,cpp set expandtab
autocmd FileType c,cpp set shiftwidth=4

autocmd BufNewFile,BufRead *.py     set tabstop=4
autocmd BufNewFile,BufRead *.py     set softtabstop=4
autocmd BufNewFile,BufRead *.py     set shiftwidth=4
" autocmd BufNewFile,BufRead *.py     set textwidth=80
autocmd BufNewFile,BufRead *.py     set smarttab
autocmd BufNewFile,BufRead *.py     set expandtab
autocmd BufNewFile,BufRead *.py     set smartindent

filetype on
filetype plugin on
filetype indent on

" map <F7> :tabp<CR>
" map <F8> :tabn<CR>
" map <F6> :tabe 
" map <F9> :bd<CR>

map <F12> :!ctags -R --languages=c++ --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

map <F6> :n 
map <F7> :bp<CR>
map <F8> :bn<CR>
map <F9> :bd<CR>
map <F10> :BufExplorer<CR>

set hidden

set ruler
" set hlsearch
set incsearch
set backspace=indent,eol,start

set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/fktags
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

set autoread

" set noignorecase smartcase
set smartcase

set visualbell t_vb=
