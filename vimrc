set runtimepath+=~/.vim_runtime
" line numbers
set number
" nice and easy line indentations
set autoindent
" set history length
set history=500
" default encodings
set encoding=utf8
set ffs=unix,dos,mac
" make vim faster
set updatetime=50
" fix backspacing bugs
set backspace=2
" Enable syntax highlighting
syntax enable

filetype plugin indent on

" setup the pathogen plugin manager
execute pathogen#infect()

" set mouse usage on
set mouse=a

"toggle file system with Ctrl + O
map <C-o> :NERDTreeToggle<CR>

" font
set gfn=IBM\ Plex\ Mono:h14,Hack:h14,Source\ Code\ Pro:h15,Menlo:h15
map <2> :retab <CR> :w<CR>

" select colorscheme
colorscheme gruvbox
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
set background=dark

" mappings for {} highlighting
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a"<esc>`<i"<esc>

" Map auto complete of {}
inoremap {<CR>  {<CR>}<Esc>O

" Ignore case when searching
set ignorecase
" When searching try to be smart about cases 
set smartcase
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch 
" Don't redraw while executing macros (good performance config)
set lazyredraw 
" For regular expressions turn magic on
set magic
" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2
" No annoying sound on errors
set noerrorbells
set belloff=all
set novisualbell
set t_vb=
set tm=500


" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <C-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2
set softtabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun
