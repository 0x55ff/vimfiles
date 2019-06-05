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

