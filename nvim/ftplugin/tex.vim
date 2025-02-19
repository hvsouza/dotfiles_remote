
let maplocalleader = " "

nmap <localleader>c <Plug>(vimtex-compile)
" ...or single-shot compilation, if you prefer.
"nmap <localleader>c <Plug>(vimtex-compile-ss)

" Define a custom shortcut to trigger VimtexView
nmap <localleader>v <plug>(vimtex-view)
set nocursorline
