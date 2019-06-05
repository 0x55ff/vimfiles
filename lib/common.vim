
set nocompatible

"turn on syntax highlighting
syntax on

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

" hide buffers when they are abandoned 
set hidden

set showcmd "show incomplete cmds down the bottom
set showmode "show current mode down the bottom

"store lots of :cmdline history
set history=1000

"display tabs and trailing spaces
set list

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


function Do(action) 
    if &filetype == 'rust'
        let compiler = 'cargo'
    elseif &filetype == 'go'
        let compiler = 'go'
    endif
    exec printf(":!%s %s\n", compiler, a:action)
endfunction

let mapleader = ','
nmap <leader>b :call Do("build")<CR>
nmap <leader>r :call Do("run")<CR>
nmap <leader>t :call Do("test")<CR>
