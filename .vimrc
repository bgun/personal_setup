set nocompatible

" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
call pathogen#helptags()
call pathogen#incubate()
execute pathogen#infect()

" change the mapleader from \ to ,
let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :tabe $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nmap <silent> ,/ :nohlsearch<CR>

" Trying to unlearn arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

map <leader>. :tabn<CR>
map <leader>m :tabp<CR>

" Font and color scheme
colorscheme darkblue
set guifont=Source\ Code\ Pro:h11
syntax on

set noswapfile

set hidden

set expandtab

set nowrap        " don't wrap lines
set tabstop=2     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

filetype on
au BufNewFile,BufRead *.less set filetype=css
au BufNewFile,BufRead *.scala set filetype=javascript
au BufNewFile,BufRead *.html.scala set filetype=html
