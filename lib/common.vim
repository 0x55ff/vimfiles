
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
set showmode "show current mode down the bottom

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
