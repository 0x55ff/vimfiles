let g:rustfmt_autosave = 1

let mapleader = ','
nmap <leader>i :Cinit<cr>
nmap <leader>b :Cbuild<cr>
nmap <leader>h :Cbench<cr>
nmap <leader>r :Crun<space>--color<space>always<space>2>&1\|more<cr>
nmap <leader>c :Cclean<cr>
nmap <leader>t :Ctest<cr>
nmap <leader>u :Cupdate<cr>
nmap <leader>s :Csearch<cr>
nmap <leader>p :Cpublish<cr>
nmap <leader>f :RustFmt<cr>
nmap gd :LspDefinition<cr>

if executable('rls')
        au User lsp_setup call lsp#register_server({
                \ 'name': 'rls',
                \ 'cmd': {server_info->['rustup', 'run', 'stable', 'rls']},
                \ 'workspace_config': {'rust': {'clippy_preference': 'on'}},
                \ 'whitelist': ['rust'],
                \ })
endif
