
set nocompatible

" show line number
set number

" enable syntax highlighting
syntax on

" enable command-line completion
set wildmenu

" display command-line completion on menu
set completeopt=menu,menuone

" popup menu max number of lines
set pumheight=16


"allow backspacing over everything in insert mode
set backspace=indent,eol,start

" hide buffers when they are abandoned 
set hidden

set showcmd "show incomplete cmds down the bottom
" set showmode "show current mode down the bottom

"store lots of :cmdline history
set history=1000


" search options
set ignorecase
set smartcase
set incsearch
set hlsearch

" show match
set showmatch

set wrap        "dont wrap lines
set linebreak   "wrap lines at convenient points


if v:version >= 703
    "undo settings
    set undodir=~/.vim/undofiles
    set undofile
    set colorcolumn=+1 "mark the ideal max text width
endif


set directory=~/.vim/swapfiles/

" windows swtich
nnoremap <C-J> <C-W>j<C-W>_
nnoremap <C-K> <C-W>k<C-W>_
nnoremap <C-H> <C-W>h<C-W>_
nnoremap <C-L> <C-W>l<C-W>_
nnoremap - <C-W>-
nnoremap + <C-W>+
set wmh=0
set winheight=999

" disable display file info on command line
set shortmess+=F
