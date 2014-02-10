"PH much of this from http://nvie.com/posts/how-i-boosted-my-vim/
"This must be the first, because it changes other options as side effect
set nocompatible

" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory

" Quickly edit/reload the vimrc file
nmap <silent> \ev :e $MYVIMRC<CR>
nmap <silent> \sv :so $MYVIMRC<CR>

set clipboard=unnamedplus

"set smart indent
filetype plugin indent on
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap  "don't warp lines
set backspace=indent,eol,start  "allow backspacing over everything

set history=1000
set undolevels=1000
set wildignore="*swp,*.class

au BufNewFile,BufRead *.fo set filetype=xml
au BufNewFile,BufRead *.svg set filetype=xml

set wrap
set linebreak
