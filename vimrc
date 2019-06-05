"turn on syntax highlighting
syntax on

" statusline setup
set statusline=%t\ "tail of the filename

" display a warning if fileformat is not unix
set statusline+=%#warningmsg#
set statusline+=%{&ff!='unix'?'['.&ff.']':''}
set statusline+=%*

"display a warning if file encoding isnt utf-8
set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*

"read only flag
set statusline+=%#identifier#
set statusline+=%r
set statusline+=%*

"modified flag
set statusline+=%#warningmsg#
set statusline+=%m
set statusline+=%*


" control last window status line 
" 0 means always no status line
" 1 means only if there are at least two windows
" 2 means always show staus line
set laststatus=2


" show the line and column number of the cursor position on status line
set ruler


" background
set background=dark

" hide buffers when they are abandoned 
set hidden

" show cmd
set showcmd

" do not compatible with vi
set nocompatible

" search options
set ignorecase
set smartcase
set incsearch

" show match
set noshowmatch

" tab options
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" indent options
set smartindent
set cindent

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


