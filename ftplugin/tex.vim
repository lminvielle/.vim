" Settinf font at 10 instead of traditionnal 9
"if has("gui_running")
    "set guifont=Monospace\ 10
"endif

" complete image name without path
let g:vimtex_complete_img_use_tail = 1

let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_view_general_options_latexmk = '--unique'

" compiler options
let g:vimtex_compiler_latexmk = {
    \ 'continuous' : 0,
    \}
let g:vimtex_latexmk_continuous = 0
let g:vimtex_quickfix_autojump = 0

" spellcheck
"set spell spelllang=en_gb

"unmap <leader>l
"nnoremap <leader>ll :VimtexCompileSS<cr>

" for creating a title comment
nnoremap <leader>ct i% =============================================================================<cr>%   <cr>% =============================================================================<esc>kA

" Custom mapping
nnoremap Í a\mathcal{}<esc>i
vmap Í S}i\mathcal<esc>LL
vmap <M-S-e> S}i\emph<esc>
