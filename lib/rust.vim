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
