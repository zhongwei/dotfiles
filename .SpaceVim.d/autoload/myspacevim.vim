function! myspacevim#before() abort
    let g:neomake_c_enabled_makers = ['clang']
    inoremap jk <Esc>
endfunction

function! myspacevim#after() abort
    " you can remove key binding in bootstrap_after function
    " iunmap jk
endfunction
