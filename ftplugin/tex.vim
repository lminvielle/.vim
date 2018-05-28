" Settinf font at 10 instead of traditionnal 9
"if has("gui_running")
    "set guifont=Monospace\ 10
"endif

" complete image name without path
let g:vimtex_complete_img_use_tail = 1

let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_view_general_options_latexmk = '--unique'

" spellcheck
set spell spelllang=en_gb

unmap <leader>l
