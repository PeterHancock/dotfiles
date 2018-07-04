"This must be the first, because it changes other options as side effect
set nocompatible

" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
execute pathogen#infect()
syntax on
filetype plugin indent on

" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')


Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

" netrw (e.g. :Vex)
let g:netrw_banner = 0
let g:netrw_liststyle = 3
" open files on the right
let g:netrw_altv = 1
let g:netrw_winsize = 25
" Opening windows ... on the current window that isn’t the file browser
let g:netrw_browse_split = 4

" Quickly edit/reload the vimrc file
nmap <silent> \ev :e $MYVIMRC<CR>
nmap <silent> \sv :so $MYVIMRC<CR>

set clipboard=unnamedplus

" ctrl-c to yank to clipboard
vnoremap <C-c> "*y

"set smart indent
filetype plugin indent on
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap  "don't warp lines
set backspace=indent,eol,start  "allow backspacing over everything
set number
set history=1000
set undolevels=1000
set wildignore="*swp,*.class

au BufNewFile,BufRead *.fo set filetype=xml
au BufNewFile,BufRead *.svg set filetype=xml

set wrap
set linebreak

" https://github.com/mxw/vim-jsx
let g:jsx_ext_required = 0

:set termguicolors

colorscheme Spacegray

:set clipboard=

:set ruler

" Spelling
" " z= for suggestions
:command Spell :setlocal spell spelllang=en
