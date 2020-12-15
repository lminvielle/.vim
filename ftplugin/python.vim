"colorscheme molokai
"colorscheme slate
nnoremap <F5> :!python3 %<cr>
" for creating a title comment
nnoremap <leader>ct i# =======================================================<cr>#   <cr># =======================================================<esc>kA
" for creating a sub-title comment
nnoremap <leader>cst i### <esc>A

" jedi completion disable opening dot when typing dot
let g:jedi#popup_on_dot = 0

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
