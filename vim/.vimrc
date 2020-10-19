"------------------------------------------------------------------------------
"			VIM CUSTOMISATION
"
" this is the vimrc file of historymaker118, it is filled with awesome things
" that make using vim easier, prettier, and more productive. You may borrow.
"
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
" COLOUR SCHEMES and VISUAL EFFECTS
"		keeping everything shiny
"------------------------------------------------------------------------------
set t_Co=256
syntax on
"colorscheme desert
set background=dark
set ruler
set number
set cursorline
set cmdheight=1
hi CursorLine term=bold cterm=bold guibg=Grey40
set noshowmode

"------------------------------------------------------------------------------
" SEARCHING
"		making finding things easier
"------------------------------------------------------------------------------
set hlsearch
set smartcase
set magic

"------------------------------------------------------------------------------
" AUTOCOMPLETE
"		because being lazy is also being effcient
"------------------------------------------------------------------------------
set wildmenu
set wildmode=list:longest,full

"------------------------------------------------------------------------------
" TEXT and SPACING
"		The answer is tabs. Always tabs.
"------------------------------------------------------------------------------
set spelllang=eng_gb
set tabstop=4
set shiftwidth=4
set smarttab
set ai
set si

"------------------------------------------------------------------------------
" FOLDING
"		when the file length is just too damn long
"------------------------------------------------------------------------------
"set foldmethod=syntax
"set foldcolumn=1

"------------------------------------------------------------------------------
" MISC
"		all the other things
"------------------------------------------------------------------------------
set autoread
set noerrorbells
set novisualbell
set shortmess+=I
set lazyredraw
set synmaxcol=128

"------------------------------------------------------------------------------
" HIGHLIGHTS
"		witespace and columns for when this matters
"------------------------------------------------------------------------------
highlight ExtraWhiteSpace ctermbg=grey guibg=grey
set colorcolumn=80

"------------------------------------------------------------------------------
" POWERLINE
"		powerline settings
"------------------------------------------------------------------------------
"let g:powerline_pycmd="py3"
"set laststatus=2

"------------------------------------------------------------------------------
" PLUGINS
"		extra functionality
"------------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

map <C-n> :NERDTreeToggle<CR>
map <C-f> :Goyo<CR>

call plug#end()
"------------------------------------------------------------------------------
" Rebecca Brannum 2019
" aka historymaker118
"------------------------------------------------------------------------------
