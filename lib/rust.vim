let g:rustfmt_autosave = 1

let mapleader = ','
nmap <leader>i :Cinit<CR>
nmap <leader>b :Cbuild<CR>
nmap <leader>h :Cbench<CR>
nmap <leader>r :Crun<CR>
nmap <leader>c :Cclean<CR>
nmap <leader>t :Ctest<CR>
nmap <leader>u :Cupdate<CR>
nmap <leader>s :Csearch<CR>
nmap <leader>p :Cpublish<CR>
nmap <leader>f :RustFmt<CR>
nmap gd :LspDefinition<CR>

if executable('rls')
        au User lsp_setup call lsp#register_server({
                \ 'name': 'rls',
                \ 'cmd': {server_info->['rustup', 'run', 'stable', 'rls']},
                \ 'workspace_config': {'rust': {'clippy_preference': 'on'}},
                \ 'whitelist': ['rust'],
                \ })
endif
