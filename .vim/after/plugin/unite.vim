if !exists("g:loaded_unite") || !g:loaded_unite
    finish
endif

if has("autocmd")
    let g:unite_data_directory=expand("$XDG_CACHE_HOME/vim/unite")
    let g:unite_enable_start_insert = 1
    let g:unite_prompt='» '

    if executable('ag')
        let g:unite_source_rec_async_command= 'ag --nocolor --nogroup --hidden -g ""'
    endif

    call unite#filters#matcher_default#use(['matcher_fuzzy'])
    call unite#filters#sorter_default#use(['sorter_rank'])

    call unite#custom#source(
        \ 'file_rec,file_rec/async,file_mru,file,buffer,grep',
        \ 'ignore_globs',
        \ split(&wildignore, ",")
        \ )

    function! <SID>Unite_Settings()
        nmap <buffer> <Esc> <Plug>(unite_exit)
        imap <buffer> <Esc> <Plug>(unite_exit)
        imap <buffer> <C-c> <Plug>(unite_insert_leave)

        nmap <buffer> <C-y> <Plug>(unite_narrowing_path)
        imap <buffer> <C-y> <Plug>(unite_narrowing_path)

        silent! iunmap <buffer><C-H>
        silent! iunmap <buffer><BS>
    endfunction

    augroup unite
        autocmd!
        autocmd FileType unite call <SID>Unite_Settings()
    augroup END
endif

