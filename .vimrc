filetype plugin indent on
syntax on

" tabs
"set smarttab
set expandtab
set shiftwidth=4
set tabstop=4
function SmallTabs()
	set tabstop=2
	set shiftwidth=2
endfunction
autocmd FileType html,css,javascript,php,tex,text call SmallTabs()
autocmd FileType tex set linebreak | set textwidth=200

" indent
set cindent

" search
set hlsearch
set incsearch
set ignorecase
set smartcase "case is ignored unless search string contains at least one upper case char
set iskeyword=@,48-57,_,192-255,-

" fuzzy search
set path+=**
set wildmenu

" remove whitespace at ends of lines on file write
autocmd BufWritePre /* :%s/\s\+$//e

" for multi file substitutions
set hidden

" ruler
set ruler

""""""""""""""""""""""""""""""""""""""""""
" colors
""""""""""""""""""""""""""""""""""""""""""
" color scheme on ubuntu
" dependancy on https://github.com/chriskempson/base16-vim
colorscheme base16-3024
highlight Visual ctermfg=8

" color scheme on mac
" dependancy on https://github.com/vbwx/base16-terminal-app
"colorscheme base16-3024
"highlight Visual ctermfg=8
"highlight TabLineSel ctermfg=6
"highlight DiffAdd ctermfg=6
"highlight GitGutterAdd ctermfg=6
"highlight SignifySignAdd ctermfg=6
"highlight LineNr ctermfg=6

""""""""""""""""""""""""""""""""""""""""""
" maps and leaders
""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","

" moving within wrapped lines
map j gj
map k gk
map <c-j> <c-D>
map <c-k> <c-U>

" browse
map <leader>b :edit .<cr>

" managing tabs
map <leader>t :tabnew<cr>:edit .<cr>
map <leader>x :tabclose<cr>
map <leader>l :tabnext<cr>
map <leader>j :tabprevious<cr>
map <leader>L :tabm +1<cr>
map <leader>J :tabm -1<cr>

" write and quit
map <leader>w :write<cr>
map <leader>q :quit<cr>

" quick indenting
map <leader>m <<
map <leader>. >>
vmap <leader>m <<<ESC>
vmap <leader>. >><ESC>

" completion
"imap <C-Tab> <C-n>



