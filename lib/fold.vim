"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default
set foldtext=MyFoldText()
set fillchars=vert:\|

function! MyFoldText()
    let DeepestAssumedFoldLvl = 5

    let line = getline(v:foldstart)
    let align = repeat(" ", DeepestAssumedFoldLvl - strlen(v:folddashes))
    let rhs = " " . (v:foldend - v:foldstart) . " lines" . align . v:folddashes
    let spacer = repeat(' ', (winwidth(".") - len(line) - len(rhs) - 10))

    return line . spacer . rhs
endfunction
