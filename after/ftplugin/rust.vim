setlocal makeprg=cargo\ run
setlocal formatprg=rustfmt\ --edition\ 2024
command! -buffer Format %!rustfmt --edition 2024
" setlocal keywordprg=rusty-man
